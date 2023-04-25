#include "../../base/Singleton.h"
#include "../../base/CurrentThread.h"
#include "../../base/ThreadLocal.h"
#include "../../base/Thread.h"

#include <stdio.h>
#include <unistd.h>

class Test : tnet::noncopyable
{
 public:
  Test()
  {
    printf("tid=%d, constructing %p\n", tnet::CurrentThread::tid(), this);
  }

  ~Test()
  {
    printf("tid=%d, destructing %p %s\n", tnet::CurrentThread::tid(), this, name_.c_str());
  }

  const tnet::string& name() const { return name_; }
  void setName(const tnet::string& n) { name_ = n; }

 private:
  tnet::string name_;
};

#define STL tnet::Singleton<tnet::ThreadLocal<Test> >::instance().value()

void print()
{
  printf("tid=%d, %p name=%s\n",
         tnet::CurrentThread::tid(),
         &STL,
         STL.name().c_str());
}

void threadFunc(const char* changeTo)
{
  print();
  STL.setName(changeTo);
  sleep(1);
  print();
}

int main()
{
  STL.setName("main one");
  tnet::Thread t1(std::bind(threadFunc, "thread1"));
  tnet::Thread t2(std::bind(threadFunc, "thread2"));
  t1.start();
  t2.start();
  t1.join();
  print();
  t2.join();
  pthread_exit(0);
}
