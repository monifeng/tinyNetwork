#include "muduo/net/TcpServer.h"
#include "muduo/net/EventLoop.h"
#include "muduo/base/Logging.h"

using namespace muduo;
using namespace muduo::net;

void onMessage(const TcpConnectionPtr& conn,
                Buffer* buf,
                Timestamp time)
{
    
    if (buf->findCRLF())
    {
        LOG_INFO << "findCRLF()";
        conn->send("shutdown()");
        conn->shutdown();
    }
}

int main()
{
    EventLoop loop;
    //InetAddress(1079);
    TcpServer server(&loop, InetAddress(1079), "Finger");
    server.setMessageCallback(onMessage);
    server.start();
    loop.loop();
}