#include "muduo/net/EventLoop.h"
#include "muduo/net/TcpServer.h"
#include "muduo/base/Logging.h"

using namespace muduo;
using namespace muduo::net;

void onConnection(const TcpConnectionPtr& conn)
{
    if (conn->connected())
    {
        //LOG_INFO << "shutdown";
        conn->shutdown();
    }
}

int main()
{
    EventLoop loop;
    TcpServer server(&loop, InetAddress(1079), "Finger");

    server.setConnectionCallback(onConnection);
    server.start();
    loop.loop();
}