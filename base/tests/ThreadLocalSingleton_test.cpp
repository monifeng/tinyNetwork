#include "../../base/ThreadLocalSingleton.h"
#include "../../base/CurrentThread.h"
#include "../../base/Thread.h"

#include <stdio.h>

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

void threadFunc(const char* changeTo)
{
  printf("tid=%d, %p name=%s\n",
         tnet::CurrentThread::tid(),
         &tnet::ThreadLocalSingleton<Test>::instance(),
         tnet::ThreadLocalSingleton<Test>::instance().name().c_str());
  tnet::ThreadLocalSingleton<Test>::instance().setName(changeTo);
  printf("tid=%d, %p name=%s\n",
         tnet::CurrentThread::tid(),
         &tnet::ThreadLocalSingleton<Test>::instance(),
         tnet::ThreadLocalSingleton<Test>::instance().name().c_str());

  // no need to manually delete it
  // tnet::ThreadLocalSingleton<Test>::destroy();
}

int main()
{
  tnet::ThreadLocalSingleton<Test>::instance().setName("main one");
  tnet::Thread t1(std::bind(threadFunc, "thread1"));
  tnet::Thread t2(std::bind(threadFunc, "thread2"));
  t1.start();
  t2.start();
  t1.join();
  printf("tid=%d, %p name=%s\n",
         tnet::CurrentThread::tid(),
         &tnet::ThreadLocalSingleton<Test>::instance(),
         tnet::ThreadLocalSingleton<Test>::instance().name().c_str());
  t2.join();

  pthread_exit(0);
}
