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
include base/CMakeFiles/base.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include base/CMakeFiles/base.dir/compiler_depend.make

# Include the progress variables for this target.
include base/CMakeFiles/base.dir/progress.make

# Include the compile flags for this target's objects.
include base/CMakeFiles/base.dir/flags.make

base/CMakeFiles/base.dir/AsyncLogging.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/AsyncLogging.cpp.o: ../base/AsyncLogging.cpp
base/CMakeFiles/base.dir/AsyncLogging.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object base/CMakeFiles/base.dir/AsyncLogging.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/AsyncLogging.cpp.o -MF CMakeFiles/base.dir/AsyncLogging.cpp.o.d -o CMakeFiles/base.dir/AsyncLogging.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/AsyncLogging.cpp

base/CMakeFiles/base.dir/AsyncLogging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/AsyncLogging.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/AsyncLogging.cpp > CMakeFiles/base.dir/AsyncLogging.cpp.i

base/CMakeFiles/base.dir/AsyncLogging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/AsyncLogging.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/AsyncLogging.cpp -o CMakeFiles/base.dir/AsyncLogging.cpp.s

base/CMakeFiles/base.dir/Condition.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/Condition.cpp.o: ../base/Condition.cpp
base/CMakeFiles/base.dir/Condition.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object base/CMakeFiles/base.dir/Condition.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/Condition.cpp.o -MF CMakeFiles/base.dir/Condition.cpp.o.d -o CMakeFiles/base.dir/Condition.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Condition.cpp

base/CMakeFiles/base.dir/Condition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Condition.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Condition.cpp > CMakeFiles/base.dir/Condition.cpp.i

base/CMakeFiles/base.dir/Condition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Condition.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Condition.cpp -o CMakeFiles/base.dir/Condition.cpp.s

base/CMakeFiles/base.dir/CountDownLatch.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/CountDownLatch.cpp.o: ../base/CountDownLatch.cpp
base/CMakeFiles/base.dir/CountDownLatch.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object base/CMakeFiles/base.dir/CountDownLatch.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/CountDownLatch.cpp.o -MF CMakeFiles/base.dir/CountDownLatch.cpp.o.d -o CMakeFiles/base.dir/CountDownLatch.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/CountDownLatch.cpp

base/CMakeFiles/base.dir/CountDownLatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/CountDownLatch.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/CountDownLatch.cpp > CMakeFiles/base.dir/CountDownLatch.cpp.i

base/CMakeFiles/base.dir/CountDownLatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/CountDownLatch.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/CountDownLatch.cpp -o CMakeFiles/base.dir/CountDownLatch.cpp.s

base/CMakeFiles/base.dir/CurrentThread.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/CurrentThread.cpp.o: ../base/CurrentThread.cpp
base/CMakeFiles/base.dir/CurrentThread.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object base/CMakeFiles/base.dir/CurrentThread.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/CurrentThread.cpp.o -MF CMakeFiles/base.dir/CurrentThread.cpp.o.d -o CMakeFiles/base.dir/CurrentThread.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/CurrentThread.cpp

base/CMakeFiles/base.dir/CurrentThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/CurrentThread.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/CurrentThread.cpp > CMakeFiles/base.dir/CurrentThread.cpp.i

base/CMakeFiles/base.dir/CurrentThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/CurrentThread.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/CurrentThread.cpp -o CMakeFiles/base.dir/CurrentThread.cpp.s

base/CMakeFiles/base.dir/Date.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/Date.cpp.o: ../base/Date.cpp
base/CMakeFiles/base.dir/Date.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object base/CMakeFiles/base.dir/Date.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/Date.cpp.o -MF CMakeFiles/base.dir/Date.cpp.o.d -o CMakeFiles/base.dir/Date.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Date.cpp

base/CMakeFiles/base.dir/Date.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Date.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Date.cpp > CMakeFiles/base.dir/Date.cpp.i

base/CMakeFiles/base.dir/Date.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Date.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Date.cpp -o CMakeFiles/base.dir/Date.cpp.s

base/CMakeFiles/base.dir/Exception.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/Exception.cpp.o: ../base/Exception.cpp
base/CMakeFiles/base.dir/Exception.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object base/CMakeFiles/base.dir/Exception.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/Exception.cpp.o -MF CMakeFiles/base.dir/Exception.cpp.o.d -o CMakeFiles/base.dir/Exception.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Exception.cpp

base/CMakeFiles/base.dir/Exception.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Exception.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Exception.cpp > CMakeFiles/base.dir/Exception.cpp.i

base/CMakeFiles/base.dir/Exception.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Exception.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Exception.cpp -o CMakeFiles/base.dir/Exception.cpp.s

base/CMakeFiles/base.dir/FileUtil.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/FileUtil.cpp.o: ../base/FileUtil.cpp
base/CMakeFiles/base.dir/FileUtil.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object base/CMakeFiles/base.dir/FileUtil.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/FileUtil.cpp.o -MF CMakeFiles/base.dir/FileUtil.cpp.o.d -o CMakeFiles/base.dir/FileUtil.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/FileUtil.cpp

base/CMakeFiles/base.dir/FileUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/FileUtil.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/FileUtil.cpp > CMakeFiles/base.dir/FileUtil.cpp.i

base/CMakeFiles/base.dir/FileUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/FileUtil.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/FileUtil.cpp -o CMakeFiles/base.dir/FileUtil.cpp.s

base/CMakeFiles/base.dir/LogFile.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/LogFile.cpp.o: ../base/LogFile.cpp
base/CMakeFiles/base.dir/LogFile.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object base/CMakeFiles/base.dir/LogFile.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/LogFile.cpp.o -MF CMakeFiles/base.dir/LogFile.cpp.o.d -o CMakeFiles/base.dir/LogFile.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/LogFile.cpp

base/CMakeFiles/base.dir/LogFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/LogFile.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/LogFile.cpp > CMakeFiles/base.dir/LogFile.cpp.i

base/CMakeFiles/base.dir/LogFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/LogFile.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/LogFile.cpp -o CMakeFiles/base.dir/LogFile.cpp.s

base/CMakeFiles/base.dir/Logging.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/Logging.cpp.o: ../base/Logging.cpp
base/CMakeFiles/base.dir/Logging.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object base/CMakeFiles/base.dir/Logging.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/Logging.cpp.o -MF CMakeFiles/base.dir/Logging.cpp.o.d -o CMakeFiles/base.dir/Logging.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Logging.cpp

base/CMakeFiles/base.dir/Logging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Logging.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Logging.cpp > CMakeFiles/base.dir/Logging.cpp.i

base/CMakeFiles/base.dir/Logging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Logging.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Logging.cpp -o CMakeFiles/base.dir/Logging.cpp.s

base/CMakeFiles/base.dir/LogStream.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/LogStream.cpp.o: ../base/LogStream.cpp
base/CMakeFiles/base.dir/LogStream.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object base/CMakeFiles/base.dir/LogStream.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/LogStream.cpp.o -MF CMakeFiles/base.dir/LogStream.cpp.o.d -o CMakeFiles/base.dir/LogStream.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/LogStream.cpp

base/CMakeFiles/base.dir/LogStream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/LogStream.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/LogStream.cpp > CMakeFiles/base.dir/LogStream.cpp.i

base/CMakeFiles/base.dir/LogStream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/LogStream.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/LogStream.cpp -o CMakeFiles/base.dir/LogStream.cpp.s

base/CMakeFiles/base.dir/ProcessInfo.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/ProcessInfo.cpp.o: ../base/ProcessInfo.cpp
base/CMakeFiles/base.dir/ProcessInfo.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object base/CMakeFiles/base.dir/ProcessInfo.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/ProcessInfo.cpp.o -MF CMakeFiles/base.dir/ProcessInfo.cpp.o.d -o CMakeFiles/base.dir/ProcessInfo.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/ProcessInfo.cpp

base/CMakeFiles/base.dir/ProcessInfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/ProcessInfo.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/ProcessInfo.cpp > CMakeFiles/base.dir/ProcessInfo.cpp.i

base/CMakeFiles/base.dir/ProcessInfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/ProcessInfo.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/ProcessInfo.cpp -o CMakeFiles/base.dir/ProcessInfo.cpp.s

base/CMakeFiles/base.dir/Timestamp.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/Timestamp.cpp.o: ../base/Timestamp.cpp
base/CMakeFiles/base.dir/Timestamp.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object base/CMakeFiles/base.dir/Timestamp.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/Timestamp.cpp.o -MF CMakeFiles/base.dir/Timestamp.cpp.o.d -o CMakeFiles/base.dir/Timestamp.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Timestamp.cpp

base/CMakeFiles/base.dir/Timestamp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Timestamp.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Timestamp.cpp > CMakeFiles/base.dir/Timestamp.cpp.i

base/CMakeFiles/base.dir/Timestamp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Timestamp.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Timestamp.cpp -o CMakeFiles/base.dir/Timestamp.cpp.s

base/CMakeFiles/base.dir/Thread.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/Thread.cpp.o: ../base/Thread.cpp
base/CMakeFiles/base.dir/Thread.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object base/CMakeFiles/base.dir/Thread.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/Thread.cpp.o -MF CMakeFiles/base.dir/Thread.cpp.o.d -o CMakeFiles/base.dir/Thread.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Thread.cpp

base/CMakeFiles/base.dir/Thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Thread.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Thread.cpp > CMakeFiles/base.dir/Thread.cpp.i

base/CMakeFiles/base.dir/Thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Thread.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/Thread.cpp -o CMakeFiles/base.dir/Thread.cpp.s

base/CMakeFiles/base.dir/ThreadPool.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/ThreadPool.cpp.o: ../base/ThreadPool.cpp
base/CMakeFiles/base.dir/ThreadPool.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object base/CMakeFiles/base.dir/ThreadPool.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/ThreadPool.cpp.o -MF CMakeFiles/base.dir/ThreadPool.cpp.o.d -o CMakeFiles/base.dir/ThreadPool.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/ThreadPool.cpp

base/CMakeFiles/base.dir/ThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/ThreadPool.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/ThreadPool.cpp > CMakeFiles/base.dir/ThreadPool.cpp.i

base/CMakeFiles/base.dir/ThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/ThreadPool.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/ThreadPool.cpp -o CMakeFiles/base.dir/ThreadPool.cpp.s

base/CMakeFiles/base.dir/TimeZone.cpp.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/TimeZone.cpp.o: ../base/TimeZone.cpp
base/CMakeFiles/base.dir/TimeZone.cpp.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object base/CMakeFiles/base.dir/TimeZone.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/CMakeFiles/base.dir/TimeZone.cpp.o -MF CMakeFiles/base.dir/TimeZone.cpp.o.d -o CMakeFiles/base.dir/TimeZone.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/TimeZone.cpp

base/CMakeFiles/base.dir/TimeZone.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/TimeZone.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/TimeZone.cpp > CMakeFiles/base.dir/TimeZone.cpp.i

base/CMakeFiles/base.dir/TimeZone.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/TimeZone.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/TimeZone.cpp -o CMakeFiles/base.dir/TimeZone.cpp.s

# Object files for target base
base_OBJECTS = \
"CMakeFiles/base.dir/AsyncLogging.cpp.o" \
"CMakeFiles/base.dir/Condition.cpp.o" \
"CMakeFiles/base.dir/CountDownLatch.cpp.o" \
"CMakeFiles/base.dir/CurrentThread.cpp.o" \
"CMakeFiles/base.dir/Date.cpp.o" \
"CMakeFiles/base.dir/Exception.cpp.o" \
"CMakeFiles/base.dir/FileUtil.cpp.o" \
"CMakeFiles/base.dir/LogFile.cpp.o" \
"CMakeFiles/base.dir/Logging.cpp.o" \
"CMakeFiles/base.dir/LogStream.cpp.o" \
"CMakeFiles/base.dir/ProcessInfo.cpp.o" \
"CMakeFiles/base.dir/Timestamp.cpp.o" \
"CMakeFiles/base.dir/Thread.cpp.o" \
"CMakeFiles/base.dir/ThreadPool.cpp.o" \
"CMakeFiles/base.dir/TimeZone.cpp.o"

# External object files for target base
base_EXTERNAL_OBJECTS =

base/libbase.a: base/CMakeFiles/base.dir/AsyncLogging.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/Condition.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/CountDownLatch.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/CurrentThread.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/Date.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/Exception.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/FileUtil.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/LogFile.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/Logging.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/LogStream.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/ProcessInfo.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/Timestamp.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/Thread.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/ThreadPool.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/TimeZone.cpp.o
base/libbase.a: base/CMakeFiles/base.dir/build.make
base/libbase.a: base/CMakeFiles/base.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX static library libbase.a"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && $(CMAKE_COMMAND) -P CMakeFiles/base.dir/cmake_clean_target.cmake
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/base.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
base/CMakeFiles/base.dir/build: base/libbase.a
.PHONY : base/CMakeFiles/base.dir/build

base/CMakeFiles/base.dir/clean:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base && $(CMAKE_COMMAND) -P CMakeFiles/base.dir/cmake_clean.cmake
.PHONY : base/CMakeFiles/base.dir/clean

base/CMakeFiles/base.dir/depend:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/moni/program/monimuduo/tinyNetwork/tinyNetwork /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/CMakeFiles/base.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : base/CMakeFiles/base.dir/depend

