// 封装了IO线程，该类创建一个线程，然后在线程中启动eventloop
#ifndef _NET_EVENTLOOPTHREAD_H_
#define _NET_EVENTLOOPTHREAD_H_

#include "../base/Condition.h"
#include "../base/Mutex.h"
#include "../base/Thread.h"
#include "../base/noncopyable.h"

namespace tnet
{
namespace net
{

class EventLoop;

class EventLoopThread : noncopyable
{
public:
    typedef std::function<void(EventLoop*)> ThreadInitCallback;

    EventLoopThread(const ThreadInitCallback &cb = ThreadInitCallback(),
                    const string& name = string());
    ~EventLoopThread();
    EventLoop* startLoop();

private:
    void threadFunc();

    EventLoop* loop_ GUARDED_BY(mutex_);
    bool exiting_;
    Thread thread_;
    MutexLock mutex_;
    Condition cond_ GUARDED_BY(mutex_);
    ThreadInitCallback callback_;
};

} // namespace net

} // namespace tnet


#endif 