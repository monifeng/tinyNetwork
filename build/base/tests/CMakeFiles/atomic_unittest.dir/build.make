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
include base/tests/CMakeFiles/atomic_unittest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include base/tests/CMakeFiles/atomic_unittest.dir/compiler_depend.make

# Include the progress variables for this target.
include base/tests/CMakeFiles/atomic_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include base/tests/CMakeFiles/atomic_unittest.dir/flags.make

base/tests/CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.o: base/tests/CMakeFiles/atomic_unittest.dir/flags.make
base/tests/CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.o: ../base/tests/Atomic_unittest.cpp
base/tests/CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.o: base/tests/CMakeFiles/atomic_unittest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object base/tests/CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/tests/CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.o -MF CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.o.d -o CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/Atomic_unittest.cpp

base/tests/CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/Atomic_unittest.cpp > CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.i

base/tests/CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/Atomic_unittest.cpp -o CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.s

# Object files for target atomic_unittest
atomic_unittest_OBJECTS = \
"CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.o"

# External object files for target atomic_unittest
atomic_unittest_EXTERNAL_OBJECTS =

bin/atomic_unittest: base/tests/CMakeFiles/atomic_unittest.dir/Atomic_unittest.cpp.o
bin/atomic_unittest: base/tests/CMakeFiles/atomic_unittest.dir/build.make
bin/atomic_unittest: base/tests/CMakeFiles/atomic_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/atomic_unittest"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/atomic_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
base/tests/CMakeFiles/atomic_unittest.dir/build: bin/atomic_unittest
.PHONY : base/tests/CMakeFiles/atomic_unittest.dir/build

base/tests/CMakeFiles/atomic_unittest.dir/clean:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && $(CMAKE_COMMAND) -P CMakeFiles/atomic_unittest.dir/cmake_clean.cmake
.PHONY : base/tests/CMakeFiles/atomic_unittest.dir/clean

base/tests/CMakeFiles/atomic_unittest.dir/depend:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/moni/program/monimuduo/tinyNetwork/tinyNetwork /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests/CMakeFiles/atomic_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : base/tests/CMakeFiles/atomic_unittest.dir/depend

