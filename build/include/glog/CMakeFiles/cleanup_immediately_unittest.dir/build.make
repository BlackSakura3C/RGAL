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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/SSD/Git/RiotGameApplication

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/SSD/Git/RiotGameApplication/build

# Include any dependencies generated for this target.
include include/glog/CMakeFiles/cleanup_immediately_unittest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include include/glog/CMakeFiles/cleanup_immediately_unittest.dir/compiler_depend.make

# Include the progress variables for this target.
include include/glog/CMakeFiles/cleanup_immediately_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include include/glog/CMakeFiles/cleanup_immediately_unittest.dir/flags.make

include/glog/CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.o: include/glog/CMakeFiles/cleanup_immediately_unittest.dir/flags.make
include/glog/CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.o: ../include/glog/src/cleanup_immediately_unittest.cc
include/glog/CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.o: include/glog/CMakeFiles/cleanup_immediately_unittest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/SSD/Git/RiotGameApplication/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object include/glog/CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.o"
	cd /Volumes/SSD/Git/RiotGameApplication/build/include/glog && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT include/glog/CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.o -MF CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.o.d -o CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.o -c /Volumes/SSD/Git/RiotGameApplication/include/glog/src/cleanup_immediately_unittest.cc

include/glog/CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.i"
	cd /Volumes/SSD/Git/RiotGameApplication/build/include/glog && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/SSD/Git/RiotGameApplication/include/glog/src/cleanup_immediately_unittest.cc > CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.i

include/glog/CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.s"
	cd /Volumes/SSD/Git/RiotGameApplication/build/include/glog && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/SSD/Git/RiotGameApplication/include/glog/src/cleanup_immediately_unittest.cc -o CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.s

# Object files for target cleanup_immediately_unittest
cleanup_immediately_unittest_OBJECTS = \
"CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.o"

# External object files for target cleanup_immediately_unittest
cleanup_immediately_unittest_EXTERNAL_OBJECTS =

include/glog/cleanup_immediately_unittest: include/glog/CMakeFiles/cleanup_immediately_unittest.dir/src/cleanup_immediately_unittest.cc.o
include/glog/cleanup_immediately_unittest: include/glog/CMakeFiles/cleanup_immediately_unittest.dir/build.make
include/glog/cleanup_immediately_unittest: include/glog/libglogtestd.a
include/glog/cleanup_immediately_unittest: /usr/local/lib/libgtest.a
include/glog/cleanup_immediately_unittest: /usr/local/lib/libgmock.a
include/glog/cleanup_immediately_unittest: /usr/local/lib/libgflags.2.2.2.dylib
include/glog/cleanup_immediately_unittest: /usr/local/lib/libgtest.a
include/glog/cleanup_immediately_unittest: include/glog/CMakeFiles/cleanup_immediately_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/SSD/Git/RiotGameApplication/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cleanup_immediately_unittest"
	cd /Volumes/SSD/Git/RiotGameApplication/build/include/glog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cleanup_immediately_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/glog/CMakeFiles/cleanup_immediately_unittest.dir/build: include/glog/cleanup_immediately_unittest
.PHONY : include/glog/CMakeFiles/cleanup_immediately_unittest.dir/build

include/glog/CMakeFiles/cleanup_immediately_unittest.dir/clean:
	cd /Volumes/SSD/Git/RiotGameApplication/build/include/glog && $(CMAKE_COMMAND) -P CMakeFiles/cleanup_immediately_unittest.dir/cmake_clean.cmake
.PHONY : include/glog/CMakeFiles/cleanup_immediately_unittest.dir/clean

include/glog/CMakeFiles/cleanup_immediately_unittest.dir/depend:
	cd /Volumes/SSD/Git/RiotGameApplication/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/SSD/Git/RiotGameApplication /Volumes/SSD/Git/RiotGameApplication/include/glog /Volumes/SSD/Git/RiotGameApplication/build /Volumes/SSD/Git/RiotGameApplication/build/include/glog /Volumes/SSD/Git/RiotGameApplication/build/include/glog/CMakeFiles/cleanup_immediately_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/glog/CMakeFiles/cleanup_immediately_unittest.dir/depend

