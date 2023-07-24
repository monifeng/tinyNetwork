#ifndef _NET_TIMERQUEUE_H_
#define _NET_TIMERQUEUE_H_

#include "../base/Mutex.h"
#include "../base/Timestamp.h"
#include "Callbacks.h"
#include "Channel.h"

#include <set>
#include <vector>

namespace tnet
{
namespace net
{
class EventLoop;
class Timer;
class TimerId;

class TimerQueue : noncopyable
{
public: 
    explicit TimerQueue(EventLoop* loop);
    ~TimerQueue();
    
    // 添加定时器事件
    TimerId addTimer(TimerCallback cb,
                    Timestamp when,
                    double interval);
    void cancel(TimerId timerid);

private:
    typedef std::pair<Timestamp, Timer*> Entry;
    typedef std::set<Entry> TimerList;
    typedef std::pair<Timer*, int64_t> ActiveTimer;
    typedef std::set<ActiveTimer> ActiveTimerSet;

    void addTimerInLoop(Timer* timer);
    void cancelInLoop(TimerId timerid);
    void handleRead();
    std::vector<Entry> getExpired(Timestamp now);
    void reset(const std::vector<Entry>& expired, Timestamp now);

    bool insert(Timer* timer);

    EventLoop* loop_;
    const int timerfd_;
    Channel timerfdChannel_;
    TimerList timers_;
    
    ActiveTimerSet activeTimers_;
    bool callingExpiredTimers_;
    ActiveTimerSet cancelingTimers_;
};

} // namespace net

} // namespace tnet



#endif