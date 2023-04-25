// 线程池，如果线程池为0就是单线程程序
#ifndef _NET_EVENTLOOPTHREADPOOL_H_
#define _NET_EVENTLOOPTHREADPOOL_H_

#include "../base/noncopyable.h"
#include "../base/Types.h"

#include <functional>
#include <memory>
#include <vector>

namespace tnet
{
namespace net
{
class EventLoop;
class EventLoopThread;

class EventLoopThreadPool : noncopyable
{
public:
    typedef std::function<void(EventLoop*)> ThreadInitCallback;
    
    EventLoopThreadPool(EventLoop* baseLoop, const string& nameArg);
    ~EventLoopThreadPool();

    void setThreadNum(int numThreads) { numThreads_ = numThreads; }
    void start(const ThreadInitCallback& cb = ThreadInitCallback());

    EventLoop* getNextLoop();
    
    EventLoop* getLoopForHash(size_t hashCode);

    std::vector<EventLoop*> getAllLoops();

    bool started() const
    { return started_; }

    const string& name() const 
    { return name_; }

private:
    EventLoop* baseLoop_;
    string name_;
    bool started_;
    int numThreads_;
    int next_;
    std::vector<std::unique_ptr<EventLoopThread> > threads_;
    std::vector<EventLoop*> loops_;
};


} // namespace net

} // namespace tnet


#endif // _NET_EVENTLOOPTHREADPOOL_H_