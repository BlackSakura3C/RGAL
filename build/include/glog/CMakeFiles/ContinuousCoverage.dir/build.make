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

# Utility rule file for ContinuousCoverage.

# Include any custom commands dependencies for this target.
include include/glog/CMakeFiles/ContinuousCoverage.dir/compiler_depend.make

# Include the progress variables for this target.
include include/glog/CMakeFiles/ContinuousCoverage.dir/progress.make

include/glog/CMakeFiles/ContinuousCoverage:
	cd /Volumes/SSD/Git/RiotGameApplication/build/include/glog && /usr/local/Cellar/cmake/3.22.1/bin/ctest -D ContinuousCoverage

ContinuousCoverage: include/glog/CMakeFiles/ContinuousCoverage
ContinuousCoverage: include/glog/CMakeFiles/ContinuousCoverage.dir/build.make
.PHONY : ContinuousCoverage

# Rule to build all files generated by this target.
include/glog/CMakeFiles/ContinuousCoverage.dir/build: ContinuousCoverage
.PHONY : include/glog/CMakeFiles/ContinuousCoverage.dir/build

include/glog/CMakeFiles/ContinuousCoverage.dir/clean:
	cd /Volumes/SSD/Git/RiotGameApplication/build/include/glog && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousCoverage.dir/cmake_clean.cmake
.PHONY : include/glog/CMakeFiles/ContinuousCoverage.dir/clean

include/glog/CMakeFiles/ContinuousCoverage.dir/depend:
	cd /Volumes/SSD/Git/RiotGameApplication/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/SSD/Git/RiotGameApplication /Volumes/SSD/Git/RiotGameApplication/include/glog /Volumes/SSD/Git/RiotGameApplication/build /Volumes/SSD/Git/RiotGameApplication/build/include/glog /Volumes/SSD/Git/RiotGameApplication/build/include/glog/CMakeFiles/ContinuousCoverage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/glog/CMakeFiles/ContinuousCoverage.dir/depend

