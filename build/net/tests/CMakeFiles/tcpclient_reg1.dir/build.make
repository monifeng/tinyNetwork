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
CMAKE_SOURCE_DIR = /home/moni/program/monimuduo/tinyNetwork/tinyNetwork

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build

# Include any dependencies generated for this target.
include net/tests/CMakeFiles/tcpclient_reg1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include net/tests/CMakeFiles/tcpclient_reg1.dir/compiler_depend.make

# Include the progress variables for this target.
include net/tests/CMakeFiles/tcpclient_reg1.dir/progress.make

# Include the compile flags for this target's objects.
include net/tests/CMakeFiles/tcpclient_reg1.dir/flags.make

net/tests/CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.o: net/tests/CMakeFiles/tcpclient_reg1.dir/flags.make
net/tests/CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.o: ../net/tests/TcpClient_reg1.cpp
net/tests/CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.o: net/tests/CMakeFiles/tcpclient_reg1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object net/tests/CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT net/tests/CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.o -MF CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.o.d -o CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/net/tests/TcpClient_reg1.cpp

net/tests/CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/net/tests/TcpClient_reg1.cpp > CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.i

net/tests/CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/net/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/net/tests/TcpClient_reg1.cpp -o CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.s

# Object files for target tcpclient_reg1
tcpclient_reg1_OBJECTS = \
"CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.o"

# External object files for target tcpclient_reg1
tcpclient_reg1_EXTERNAL_OBJECTS =

bin/tcpclient_reg1: net/tests/CMakeFiles/tcpclient_reg1.dir/TcpClient_reg1.cpp.o
bin/tcpclient_reg1: net/tests/CMakeFiles/tcpclient_reg1.dir/build.make
bin/tcpclient_reg1: net/libnet.a
bin/tcpclient_reg1: base/libbase.a
bin/tcpclient_reg1: net/tests/CMakeFiles/tcpclient_reg1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/tcpclient_reg1"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/net/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcpclient_reg1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
net/tests/CMakeFiles/tcpclient_reg1.dir/build: bin/tcpclient_reg1
.PHONY : net/tests/CMakeFiles/tcpclient_reg1.dir/build

net/tests/CMakeFiles/tcpclient_reg1.dir/clean:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/net/tests && $(CMAKE_COMMAND) -P CMakeFiles/tcpclient_reg1.dir/cmake_clean.cmake
.PHONY : net/tests/CMakeFiles/tcpclient_reg1.dir/clean

net/tests/CMakeFiles/tcpclient_reg1.dir/depend:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/moni/program/monimuduo/tinyNetwork/tinyNetwork /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/net/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/net/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/net/tests/CMakeFiles/tcpclient_reg1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : net/tests/CMakeFiles/tcpclient_reg1.dir/depend

