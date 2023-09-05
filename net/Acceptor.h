#ifndef _NET_ACCEPTOR_H_
#define _NET_ACCEPTOR_H_

#include <functional>
#include "Channel.h"
#include "Socket.h"

namespace tnet
{

namespace net
{

class EventLoop;
class InetAddress;
class Channel;

class Acceptor : noncopyable
{
public:
    typedef std::function<void (int sockfd, const InetAddress&)> NewConnectionCallback;

    Acceptor(EventLoop* loop, const InetAddress& listenAddr, bool reuseport);
    ~Acceptor();

    void setNewConnectionCallback(const NewConnectionCallback &cb)
    { newConnectionCallback_ = cb; }

    void listen();
    
    bool listening() const { return listening_; }

private:
    void handleRead();

    EventLoop* loop_;
    Socket acceptSocket_;
    Channel acceptChannel_;
    NewConnectionCallback newConnectionCallback_;
    bool listening_;
    int idleFd_;    //空余fd
};

} // namespace net


} // namespace tnet


#endif // _NET_ACCEPTOR_H_