set(http_SRCS
  HttpServer.cpp
  HttpResponse.cpp
  HttpContext.cpp
  )

add_library(http ${http_SRCS})
target_link_libraries(http net)

add_executable(httpserver_test tests/HttpServer_test.cpp)
target_link_libraries(httpserver_test http)

add_executable(file_server tests/file_server.cpp)
target_link_libraries(file_server http)

add_executable(httprequest_unittest tests/HttpRequest_unittest.cpp)
target_link_libraries(httprequest_unittest http boost_unit_test_framework)
