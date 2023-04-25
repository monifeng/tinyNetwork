set(base_SRCS
  AsyncLogging.cpp
  Condition.cpp
  CountDownLatch.cpp
  CurrentThread.cpp
  Date.cpp
  Exception.cpp
  FileUtil.cpp
  LogFile.cpp
  Logging.cpp
  LogStream.cpp
  ProcessInfo.cpp
  Timestamp.cpp
  Thread.cpp
  ThreadPool.cpp
  TimeZone.cpp
  )

add_library(base ${base_SRCS})
target_link_libraries(base pthread rt)

add_subdirectory(tests)
