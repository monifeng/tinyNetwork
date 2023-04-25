#include "echo.h"

#include "muduo/net/EventLoop.h"
#include "muduo/base/Logging.h"

#include <unistd.h>

int main()
{
    LOG_INFO << "pid = " << getpid();
    EventLoop loop;
    InetAddress listenAddr(8888);
    EchoServer server(&loop, listenAddr);
    server.start();
    loop.loop();
}