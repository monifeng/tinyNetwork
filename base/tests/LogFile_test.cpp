#include "../../base/LogFile.h"
#include "../../base/Logging.h"

#include <unistd.h>

std::unique_ptr<tnet::LogFile> g_logFile;

void outputFunc(const char* msg, int len)
{
  g_logFile->append(msg, len);
}

void flushFunc()
{
  g_logFile->flush();
}

int main(int argc, char* argv[])
{
  char name[256] = { '\0' };
  strncpy(name, argv[0], sizeof name - 1);
  g_logFile.reset(new tnet::LogFile(::basename(name), 200*1000));
  tnet::Logger::setOutput(outputFunc);
  tnet::Logger::setFlush(flushFunc);

  tnet::string line = "1234567890 abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ ";

  for (int i = 0; i < 10000; ++i)
  {
    LOG_INFO << line << i;

    usleep(1000);
  }
}
