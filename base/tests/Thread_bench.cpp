#include "../../base/Atomic.h"
#include "../../base/BlockingQueue.h"
#include "../../base/CurrentThread.h"
#include "../../base/Mutex.h"
#include "../../base/Thread.h"
#include "../../base/Timestamp.h"

#include <map>
#include <string>
#include <vector>

#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>

bool g_verbose = false;
tnet::MutexLock g_mutex;
tnet::AtomicInt32 g_count;
std::map<int, int> g_delays;

void threadFunc()
{
  //printf("tid=%d\n", tnet::CurrentThread::tid());
  g_count.increment();
}

void threadFunc2(tnet::Timestamp start)
{
  tnet::Timestamp now(tnet::Timestamp::now());
  int delay = static_cast<int>(timeDifference(now, start) * 1000000);
  tnet::MutexLockGuard lock(g_mutex);
  ++g_delays[delay];
}

void forkBench()
{
  sleep(10);
  tnet::Timestamp start(tnet::Timestamp::now());
  int kProcesses = 10*1000;

  printf("Creating %d processes in serial\n", kProcesses);
  for (int i = 0; i < kProcesses; ++i)
  {
    pid_t child = fork();
    if (child == 0)
    {
      exit(0);
    }
    else
    {
      waitpid(child, NULL, 0);
    }
  }

  double timeUsed = timeDifference(tnet::Timestamp::now(), start);
  printf("time elapsed %.3f seconds, process creation time used %.3f us\n",
        timeUsed, timeUsed*1e6/kProcesses);
  printf("number of created processes %d\n", kProcesses);
}

class Bench
{
 public:
  Bench(int numThreads)
    : startLatch_(numThreads),
      stopLatch_(1)
  {
    threads_.reserve(numThreads);
    for (int i = 0; i < numThreads; ++i)
    {
      char name[32];
      snprintf(name, sizeof name, "work thread %d", i);
      threads_.emplace_back(new tnet::Thread(
            [this] { threadFunc(); },
            tnet::string(name)));
    }
  }

  void Start()
  {
    const int numThreads = static_cast<int>(threads_.size());
    printf("Creating %d threads in parallel\n", numThreads);
    tnet::Timestamp start = tnet::Timestamp::now();

    for (auto& thr : threads_)
    {
      thr->start();
    }
    startLatch_.wait();
    double timeUsed = timeDifference(tnet::Timestamp::now(), start);
    printf("all %d threads started, %.3fms total, %.3fus per thread\n",
           numThreads, 1e3 * timeUsed, 1e6 * timeUsed / numThreads);

    TimestampQueue::queue_type queue = start_.drain();
    if (g_verbose)
    {
      // for (const auto& [tid, ts] : queue)
      for (const auto& e : queue)
      {
        printf("thread %d, %.0f us\n", e.first, timeDifference(e.second, start) * 1e6);
      }
    }
  }

  void Stop()
  {
    tnet::Timestamp stop = tnet::Timestamp::now();
    stopLatch_.countDown();
    for (auto& thr : threads_)
    {
      thr->join();
    }

    tnet::Timestamp t2 = tnet::Timestamp::now();
    printf("all %zd threads joined, %.3fms\n",
           threads_.size(), 1e3 * timeDifference(t2, stop));
    TimestampQueue::queue_type queue = done_.drain();
    if (g_verbose)
    {
      // for (const auto& [tid, ts] : queue)
      for (const auto& e : queue)
      {
        printf("thread %d, %.0f us\n", e.first, timeDifference(e.second, stop) * 1e6);
      }
    }
  }

 private:
  void threadFunc()
  {
    const int tid = tnet::CurrentThread::tid();
    start_.put(std::make_pair(tid, tnet::Timestamp::now()));
    startLatch_.countDown();
    stopLatch_.wait();
    done_.put(std::make_pair(tid, tnet::Timestamp::now()));
  }

  using TimestampQueue = tnet::BlockingQueue<std::pair<int, tnet::Timestamp>>;
  TimestampQueue start_, run_, done_;
  tnet::CountDownLatch startLatch_, stopLatch_;
  std::vector<std::unique_ptr<tnet::Thread>> threads_;
};

int main(int argc, char* argv[])
{
  g_verbose = argc > 1;
  printf("pid=%d, tid=%d, verbose=%d\n",
         ::getpid(), tnet::CurrentThread::tid(), g_verbose);
  tnet::Timestamp start(tnet::Timestamp::now());

  int kThreads = 100*1000;
  printf("Creating %d threads in serial\n", kThreads);
  for (int i = 0; i < kThreads; ++i)
  {
    tnet::Thread t1(threadFunc);
    t1.start();
    t1.join();
  }

  double timeUsed = timeDifference(tnet::Timestamp::now(), start);
  printf("elapsed %.3f seconds, thread creation time %.3f us\n", timeUsed,
         timeUsed*1e6/kThreads);
  printf("number of created threads %d, g_count = %d\n",
         tnet::Thread::numCreated(), g_count.get());

  for (int i = 0; i < kThreads; ++i)
  {
    tnet::Timestamp now(tnet::Timestamp::now());
    tnet::Thread t2(std::bind(threadFunc2, now));
    t2.start();
    t2.join();
  }

  if (g_verbose)
  {
    tnet::MutexLockGuard lock(g_mutex);
    for (const auto& delay : g_delays)
    {
      printf("delay = %d, count = %d\n",
             delay.first, delay.second);
    }
  }

  Bench t(10000);
  t.Start();
  t.Stop();

  forkBench();
}
