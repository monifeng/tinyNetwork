#ifndef _COUNTDOWNLATCH_H_
#define _COUNTDOWNLATCH_H_

#include "Condition.h"
#include "Mutex.h"

namespace tnet
{

class CountDownLatch : noncopyable
{
 public:

  explicit CountDownLatch(int count);

  void wait();

  void countDown();

  int getCount() const;

 private:
  mutable MutexLock mutex_;
  Condition condition_ GUARDED_BY(mutex_);
  int count_ GUARDED_BY(mutex_);
};

}  // namespace tnet
#endif  // _COUNTDOWNLATCH_H_
