#ifndef _NET_SOCKET_H_
#define _NET_SOCKET_H_

#include "../base/noncopyable.h"

struct tcp_info;

namespace tnet
{
namespace net
{
class InetAddress;

// Socket类封装了socket相关的函数，并以RAII封装了socket文件描述符，在
// 析构时会关闭文件描述符

class Socket : noncopyable
{
public:
    explicit Socket(int sockfd)
    : sockfd_(sockfd)
    {}

    ~Socket();

    int fd() const { return sockfd_; }
    bool getTcpInfo(struct tcp_info *) const;
    bool getTcpInfoString(char* buf, int len) const;

    void bindAddress(const InetAddress& localaddr);

    void listen();

    // 服务端调用
    int accept(InetAddress *peeraddr);

    void shutdownWrite();

    // 设置socket各项参数
    void setTcpNoDelay(bool on);
    void setReuseAddr(bool on);
    void setReusePort(bool on);
    void setKeepAlive(bool on);
    
private:
    const int sockfd_;
};

} // namespace net

} // namespace tnet



#endif // _NET_SOCKET_H_