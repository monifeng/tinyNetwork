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
include base/tests/CMakeFiles/logstream_bench.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include base/tests/CMakeFiles/logstream_bench.dir/compiler_depend.make

# Include the progress variables for this target.
include base/tests/CMakeFiles/logstream_bench.dir/progress.make

# Include the compile flags for this target's objects.
include base/tests/CMakeFiles/logstream_bench.dir/flags.make

base/tests/CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.o: base/tests/CMakeFiles/logstream_bench.dir/flags.make
base/tests/CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.o: ../base/tests/LogStream_bench.cpp
base/tests/CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.o: base/tests/CMakeFiles/logstream_bench.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object base/tests/CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/tests/CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.o -MF CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.o.d -o CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/LogStream_bench.cpp

base/tests/CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/LogStream_bench.cpp > CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.i

base/tests/CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/LogStream_bench.cpp -o CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.s

# Object files for target logstream_bench
logstream_bench_OBJECTS = \
"CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.o"

# External object files for target logstream_bench
logstream_bench_EXTERNAL_OBJECTS =

bin/logstream_bench: base/tests/CMakeFiles/logstream_bench.dir/LogStream_bench.cpp.o
bin/logstream_bench: base/tests/CMakeFiles/logstream_bench.dir/build.make
bin/logstream_bench: base/libbase.a
bin/logstream_bench: base/tests/CMakeFiles/logstream_bench.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/logstream_bench"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/logstream_bench.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
base/tests/CMakeFiles/logstream_bench.dir/build: bin/logstream_bench
.PHONY : base/tests/CMakeFiles/logstream_bench.dir/build

base/tests/CMakeFiles/logstream_bench.dir/clean:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && $(CMAKE_COMMAND) -P CMakeFiles/logstream_bench.dir/cmake_clean.cmake
.PHONY : base/tests/CMakeFiles/logstream_bench.dir/clean

base/tests/CMakeFiles/logstream_bench.dir/depend:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/moni/program/monimuduo/tinyNetwork/tinyNetwork /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests/CMakeFiles/logstream_bench.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : base/tests/CMakeFiles/logstream_bench.dir/depend

