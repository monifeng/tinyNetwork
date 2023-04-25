#include "muduo/net/EventLoop.h"

using namespace muduo;
using namespace muduo::net;

int main()
{
    printf("just loop\n");
    EventLoop loop;
    loop.loop();
}