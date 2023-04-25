#include "Exception.h"
#include "CurrentThread.h"

namespace tnet
{

Exception::Exception(string msg)
  : message_(std::move(msg)),
    stack_(CurrentThread::stackTrace(/*demangle=*/false))
{
}

}  // namespace tnet
