#include "../../base/Singleton.h"
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

class TestNoDestroy : tnet::noncopyable
{
 public:
  // Tag member for Singleton<T>
  void no_destroy();

  TestNoDestroy()
  {
    printf("tid=%d, constructing TestNoDestroy %p\n", tnet::CurrentThread::tid(), this);
  }

  ~TestNoDestroy()
  {
    printf("tid=%d, destructing TestNoDestroy %p\n", tnet::CurrentThread::tid(), this);
  }
};

void threadFunc()
{
  printf("tid=%d, %p name=%s\n",
         tnet::CurrentThread::tid(),
         &tnet::Singleton<Test>::instance(),
         tnet::Singleton<Test>::instance().name().c_str());
  tnet::Singleton<Test>::instance().setName("only one, changed");
}

int main()
{
  tnet::Singleton<Test>::instance().setName("only one");
  tnet::Thread t1(threadFunc);
  t1.start();
  t1.join();
  printf("tid=%d, %p name=%s\n",
         tnet::CurrentThread::tid(),
         &tnet::Singleton<Test>::instance(),
         tnet::Singleton<Test>::instance().name().c_str());
  tnet::Singleton<TestNoDestroy>::instance();
  printf("with valgrind, you should see %zd-byte memory leak.\n", sizeof(TestNoDestroy));
}
