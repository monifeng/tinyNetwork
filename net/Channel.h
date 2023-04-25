#ifndef _MUDUO_NET_CHANNEL_H_
#define _MUDUO_NET_CHANNEL_H_

#include "../base/noncopyable.h"
#include "../base/Timestamp.h"

#include <functional>
#include <memory>

namespace tnet
{
    
namespace net
{

class EventLoop;

class Channel : noncopyable
{
public: 
    typedef std::function<void()> EventCallback;
    typedef std::function<void(Timestamp)> ReadEventCallBack;

    Channel(EventLoop *loop, int fd);
    ~Channel();

    void handleEvent(Timestamp receiveTIme);

    void setReadCallback(ReadEventCallBack cb)
    { readCallback_ = std::move(cb); }
    void setWriteCallback(EventCallback cb)
    { writeCallback_ = std::move(cb); }
    void setCloseCallback(EventCallback cb)
    { closeCallback_ = std::move(cb); }
    void setErrorCallback(EventCallback cb)
    { errorCallback_ = std::move(cb); }

    // 每个channel并不能单独存在，该函数是绑定在其上的
    void tie(const std::shared_ptr<void>&);

    int fd() const { return fd_; }
    int events() const { return events_; }
    void set_revents(int revt) { revents_ = revt; }
    bool isNoneEvent() const {return events_ == kNoneEvent; }

    void enableReading() { events_ |= kReadEvent; update(); }
    void disableReading() { events_ &= ~kReadEvent; update(); }
    void enableWriting() { events_ |= kWriteEvent; update(); }
    void disableWriting() { events_ &= ~kWriteEvent; update(); }
    void disableAll()     { events_ = kNoneEvent; update(); }
    bool isWriting() const { return events_ & kWriteEvent; }
    bool isReading() const { return events_ & kReadEvent; }

    int index() { return index_; }
    void set_index(int index) { index_ = index; }

    string reventsToString() const;
    string eventsToString() const;

    void doNotLogHup() { logHup_ = false; }

    EventLoop* ownerLoop() { return loop_; }
    void remove();

private:
    static string eventsToString(int fd, int ev);

    void update();
    void handleEventWithGuard(Timestamp receiveTime);
    // 定义在类外，声明在类内；
    static const int kNoneEvent;
    static const int kReadEvent;
    static const int kWriteEvent;

    EventLoop*      loop_;
    const int       fd_;
    int             events_;
    int             revents_;
    int             index_;
    bool            logHup_;

    std::weak_ptr<void> tie_;
    bool                tied_;
    bool                eventHandling_;
    bool                addedToLoop_;
    ReadEventCallBack   readCallback_;
    EventCallback       writeCallback_;
    EventCallback       closeCallback_;
    EventCallback       errorCallback_;
       
};

} // namespace net


} // namespace tnet


#endif
