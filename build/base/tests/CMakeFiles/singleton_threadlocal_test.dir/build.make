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
include base/tests/CMakeFiles/singleton_threadlocal_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include base/tests/CMakeFiles/singleton_threadlocal_test.dir/compiler_depend.make

# Include the progress variables for this target.
include base/tests/CMakeFiles/singleton_threadlocal_test.dir/progress.make

# Include the compile flags for this target's objects.
include base/tests/CMakeFiles/singleton_threadlocal_test.dir/flags.make

base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.o: base/tests/CMakeFiles/singleton_threadlocal_test.dir/flags.make
base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.o: ../base/tests/SingletonThreadLocal_test.cpp
base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.o: base/tests/CMakeFiles/singleton_threadlocal_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.o -MF CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.o.d -o CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/SingletonThreadLocal_test.cpp

base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/SingletonThreadLocal_test.cpp > CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.i

base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/SingletonThreadLocal_test.cpp -o CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.s

# Object files for target singleton_threadlocal_test
singleton_threadlocal_test_OBJECTS = \
"CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.o"

# External object files for target singleton_threadlocal_test
singleton_threadlocal_test_EXTERNAL_OBJECTS =

bin/singleton_threadlocal_test: base/tests/CMakeFiles/singleton_threadlocal_test.dir/SingletonThreadLocal_test.cpp.o
bin/singleton_threadlocal_test: base/tests/CMakeFiles/singleton_threadlocal_test.dir/build.make
bin/singleton_threadlocal_test: base/libbase.a
bin/singleton_threadlocal_test: base/tests/CMakeFiles/singleton_threadlocal_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/singleton_threadlocal_test"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/singleton_threadlocal_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
base/tests/CMakeFiles/singleton_threadlocal_test.dir/build: bin/singleton_threadlocal_test
.PHONY : base/tests/CMakeFiles/singleton_threadlocal_test.dir/build

base/tests/CMakeFiles/singleton_threadlocal_test.dir/clean:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && $(CMAKE_COMMAND) -P CMakeFiles/singleton_threadlocal_test.dir/cmake_clean.cmake
.PHONY : base/tests/CMakeFiles/singleton_threadlocal_test.dir/clean

base/tests/CMakeFiles/singleton_threadlocal_test.dir/depend:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/moni/program/monimuduo/tinyNetwork/tinyNetwork /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests/CMakeFiles/singleton_threadlocal_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : base/tests/CMakeFiles/singleton_threadlocal_test.dir/depend

