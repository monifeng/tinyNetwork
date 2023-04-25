#include "../../base/ProcessInfo.h"
#include <stdio.h>
#define __STDC_FORMAT_MACROS
#include <inttypes.h>

int main()
{
  printf("pid = %d\n", tnet::ProcessInfo::pid());
  printf("uid = %d\n", tnet::ProcessInfo::uid());
  printf("euid = %d\n", tnet::ProcessInfo::euid());
  printf("start time = %s\n", tnet::ProcessInfo::startTime().toFormattedString().c_str());
  printf("hostname = %s\n", tnet::ProcessInfo::hostname().c_str());
  printf("opened files = %d\n", tnet::ProcessInfo::openedFiles());
  printf("threads = %zd\n", tnet::ProcessInfo::threads().size());
  printf("num threads = %d\n", tnet::ProcessInfo::numThreads());
  printf("status = %s\n", tnet::ProcessInfo::procStatus().c_str());
}
