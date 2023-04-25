#include "../../net/Poller.h"
#include "../../net/poller/PollPoller.h"
#include "../../net/poller/EPollPoller.h"

#include <stdlib.h>

using namespace tnet::net;

Poller* Poller::newDefaultPoller(EventLoop* loop)
{
    if (::getenv("MUDUO_USE_POLL"))
    {
        return new PollPoller(loop);
    }
    else 
    {
      //   默认调用Epoll
        return new EPollPoller(loop);
    }
}