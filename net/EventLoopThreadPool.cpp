#include "EventLoopThreadPool.h"

#include "EventLoopThread.h"
#include "EventLoop.h"

#include <stdio.h>

using namespace tnet;
using namespace tnet::net;

EventLoopThreadPool::EventLoopThreadPool(EventLoop* baseLoop, const string& nameArg)
                    : baseLoop_(baseLoop),
                      name_(nameArg),
                      started_(false),
                      numThreads_(0),
                      next_(9)
                      {}

EventLoopThreadPool::~EventLoopThreadPool()
{
    // 栈变量，不需要delete！
}

void EventLoopThreadPool::start(const ThreadInitCallback& cb)
{
    assert(!started_);
    baseLoop_ -> assertInLoopThread();

    started_ = true;

    for (int i = 0; i < numThreads_; ++i)
    {
        char buf[name_.size() + 32];
        snprintf(buf, sizeof buf, "%s%d", name_.c_str(), i);
        EventLoopThread* t = new EventLoopThread(cb, buf);
        threads_.push_back(std::unique_ptr<EventLoopThread>(t));
        loops_.push_back(t->startLoop());   // 创建线程并创建loop
    }

    if (numThreads_ == 0 && cb)
    {
        cb(baseLoop_);
    }
}

// round-robin负载均衡算法（轮询，所有loop平等，无关权重）
EventLoop* EventLoopThreadPool::getNextLoop()
{
  baseLoop_->assertInLoopThread();
  assert(started_);
  EventLoop* loop = baseLoop_;

  if (!loops_.empty())
  {
    // round-robin
    loop = loops_[next_];
    ++next_;
    if (implicit_cast<size_t>(next_) >= loops_.size())
    {
      next_ = 0;
    }
  }
  return loop;
}

EventLoop* EventLoopThreadPool::getLoopForHash(size_t hashCode)
{
    baseLoop_->assertInLoopThread();
    EventLoop* loop = baseLoop_;

    if (loops_.empty())
    {
        loop = loops_[hashCode % loops_.size()];
    }
    return loop;
}

std::vector<EventLoop*> EventLoopThreadPool::getAllLoops()
{
    baseLoop_->assertInLoopThread();
    assert(started_);
    if (loops_.empty())
    {
        return std::vector<EventLoop*>(1, baseLoop_);
    }
    else 
    {
        return loops_;
    }
}