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
include base/tests/CMakeFiles/fileutil_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include base/tests/CMakeFiles/fileutil_test.dir/compiler_depend.make

# Include the progress variables for this target.
include base/tests/CMakeFiles/fileutil_test.dir/progress.make

# Include the compile flags for this target's objects.
include base/tests/CMakeFiles/fileutil_test.dir/flags.make

base/tests/CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.o: base/tests/CMakeFiles/fileutil_test.dir/flags.make
base/tests/CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.o: ../base/tests/FileUtil_test.cpp
base/tests/CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.o: base/tests/CMakeFiles/fileutil_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object base/tests/CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.o"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT base/tests/CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.o -MF CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.o.d -o CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.o -c /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/FileUtil_test.cpp

base/tests/CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.i"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/FileUtil_test.cpp > CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.i

base/tests/CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.s"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests/FileUtil_test.cpp -o CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.s

# Object files for target fileutil_test
fileutil_test_OBJECTS = \
"CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.o"

# External object files for target fileutil_test
fileutil_test_EXTERNAL_OBJECTS =

bin/fileutil_test: base/tests/CMakeFiles/fileutil_test.dir/FileUtil_test.cpp.o
bin/fileutil_test: base/tests/CMakeFiles/fileutil_test.dir/build.make
bin/fileutil_test: base/libbase.a
bin/fileutil_test: base/tests/CMakeFiles/fileutil_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/fileutil_test"
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fileutil_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
base/tests/CMakeFiles/fileutil_test.dir/build: bin/fileutil_test
.PHONY : base/tests/CMakeFiles/fileutil_test.dir/build

base/tests/CMakeFiles/fileutil_test.dir/clean:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests && $(CMAKE_COMMAND) -P CMakeFiles/fileutil_test.dir/cmake_clean.cmake
.PHONY : base/tests/CMakeFiles/fileutil_test.dir/clean

base/tests/CMakeFiles/fileutil_test.dir/depend:
	cd /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/moni/program/monimuduo/tinyNetwork/tinyNetwork /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/base/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests /home/moni/program/monimuduo/tinyNetwork/tinyNetwork/build/base/tests/CMakeFiles/fileutil_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : base/tests/CMakeFiles/fileutil_test.dir/depend

