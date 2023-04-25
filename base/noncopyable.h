#ifndef _NONCOPYABLE_H_
#define _NONCOPYABLE_H_

namespace tnet
{

class noncopyable
{
 public:
  noncopyable(const noncopyable&) = delete;
  void operator=(const noncopyable&) = delete;

 protected:
  noncopyable() = default;
  ~noncopyable() = default;
};

}  // namespace tnet

#endif  // _NONCOPYABLE_H_
