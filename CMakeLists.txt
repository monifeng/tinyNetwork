cmake_minimum_required(VERSION 3.10)

project(tinyNetwork)

set(CXX_FLAGS -g -Wall -std=c++11)

string(REPLACE ";" " " CMAKE_CXX_FLAGS "${CXX_FLAGS}")

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

# find_package(Boost REQUIRED)
# find_library(BOOSTTEST_LIBRARY NAMES boost_unit_test_framework)
# find_library(BOOSTPO_LIBRARY NAMES boost_program_options)
# find_library(BOOSTSYSTEM_LIBRARY NAMES boost_system)

add_subdirectory(base)
add_subdirectory(net)

# add_executable(main main.cpp) 
# target_link_libraries(main base net http)