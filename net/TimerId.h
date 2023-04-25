#ifndef _NET_TIMERID_H_
#define _NET_TIMERID_H_

#include "../base/copyable.h"
#include "stdlib.h"

namespace tnet
{

namespace net
{
    
class Timer;

class TimerId : public tnet::copyable
{
public:
    TimerId()
    : timer_(NULL)
    , sequence_(0)
    {}

    TimerId(Timer* timer, int64_t seq)
    : timer_(timer),
      sequence_(seq)
    {} 

    friend class TimerQueue;
private:
    Timer* timer_;
    int64_t sequence_;
};

} // namespace net


} // namespace tnet


#endif  //_NET_TIMERID_H_