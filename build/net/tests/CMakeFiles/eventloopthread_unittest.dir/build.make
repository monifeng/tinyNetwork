# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/moni/program/monimuduo/muduo_1/muduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/moni/program/monimuduo/muduo_1/muduo/build

# Include any dependencies generated for this target.
include net/tests/CMakeFiles/eventloopthread_unittest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include net/tests/CMakeFiles/eventloopthread_unittest.dir/compiler_depend.make

# Include the progress variables for this target.
include net/tests/CMakeFiles/eventloopthread_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include net/tests/CMakeFiles/eventloopthread_unittest.dir/flags.make

net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.o: net/tests/CMakeFiles/eventloopthread_unittest.dir/flags.make
net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.o: ../net/tests/EventLoopThread_unittest.cpp
net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.o: net/tests/CMakeFiles/eventloopthread_unittest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/muduo_1/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.o"
	cd /home/moni/program/monimuduo/muduo_1/muduo/build/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.o -MF CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.o.d -o CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.o -c /home/moni/program/monimuduo/muduo_1/muduo/net/tests/EventLoopThread_unittest.cpp

net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.i"
	cd /home/moni/program/monimuduo/muduo_1/muduo/build/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/muduo_1/muduo/net/tests/EventLoopThread_unittest.cpp > CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.i

net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.s"
	cd /home/moni/program/monimuduo/muduo_1/muduo/build/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/muduo_1/muduo/net/tests/EventLoopThread_unittest.cpp -o CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.s

# Object files for target eventloopthread_unittest
eventloopthread_unittest_OBJECTS = \
"CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.o"

# External object files for target eventloopthread_unittest
eventloopthread_unittest_EXTERNAL_OBJECTS =

bin/eventloopthread_unittest: net/tests/CMakeFiles/eventloopthread_unittest.dir/EventLoopThread_unittest.cpp.o
bin/eventloopthread_unittest: net/tests/CMakeFiles/eventloopthread_unittest.dir/build.make
bin/eventloopthread_unittest: net/libnet.a
bin/eventloopthread_unittest: base/libbase.a
bin/eventloopthread_unittest: net/tests/CMakeFiles/eventloopthread_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/moni/program/monimuduo/muduo_1/muduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/eventloopthread_unittest"
	cd /home/moni/program/monimuduo/muduo_1/muduo/build/net/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eventloopthread_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
net/tests/CMakeFiles/eventloopthread_unittest.dir/build: bin/eventloopthread_unittest
.PHONY : net/tests/CMakeFiles/eventloopthread_unittest.dir/build

net/tests/CMakeFiles/eventloopthread_unittest.dir/clean:
	cd /home/moni/program/monimuduo/muduo_1/muduo/build/net/tests && $(CMAKE_COMMAND) -P CMakeFiles/eventloopthread_unittest.dir/cmake_clean.cmake
.PHONY : net/tests/CMakeFiles/eventloopthread_unittest.dir/clean

net/tests/CMakeFiles/eventloopthread_unittest.dir/depend:
	cd /home/moni/program/monimuduo/muduo_1/muduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/moni/program/monimuduo/muduo_1/muduo /home/moni/program/monimuduo/muduo_1/muduo/net/tests /home/moni/program/monimuduo/muduo_1/muduo/build /home/moni/program/monimuduo/muduo_1/muduo/build/net/tests /home/moni/program/monimuduo/muduo_1/muduo/build/net/tests/CMakeFiles/eventloopthread_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : net/tests/CMakeFiles/eventloopthread_unittest.dir/depend

