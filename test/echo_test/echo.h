#include "muduo/net/TcpServer.h"

using namespace muduo;
using namespace muduo::net;

class EchoServer
{
public:
    EchoServer(muduo::net::EventLoop* loop, const InetAddress& listenAddr);

    void start(); // call server_.start()

private:
    void onConnection(const TcpConnectionPtr& conn);

    void onMessage(const TcpConnectionPtr& conn,
                    Buffer* buf,
                    Timestamp time);

    TcpServer server_;
};