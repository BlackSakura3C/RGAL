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
CMAKE_SOURCE_DIR = /Volumes/SSD/Git/RGAL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/SSD/Git/RGAL/build

# Utility rule file for NightlyConfigure.

# Include any custom commands dependencies for this target.
include src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/compiler_depend.make

# Include the progress variables for this target.
include src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/progress.make

src/include/extlibs/glog/CMakeFiles/NightlyConfigure:
	cd /Volumes/SSD/Git/RGAL/build/src/include/extlibs/glog && /usr/local/Cellar/cmake/3.22.1/bin/ctest -D NightlyConfigure

NightlyConfigure: src/include/extlibs/glog/CMakeFiles/NightlyConfigure
NightlyConfigure: src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/build.make
.PHONY : NightlyConfigure

# Rule to build all files generated by this target.
src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/build: NightlyConfigure
.PHONY : src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/build

src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/clean:
	cd /Volumes/SSD/Git/RGAL/build/src/include/extlibs/glog && $(CMAKE_COMMAND) -P CMakeFiles/NightlyConfigure.dir/cmake_clean.cmake
.PHONY : src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/clean

src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/depend:
	cd /Volumes/SSD/Git/RGAL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/SSD/Git/RGAL /Volumes/SSD/Git/RGAL/src/include/extlibs/glog /Volumes/SSD/Git/RGAL/build /Volumes/SSD/Git/RGAL/build/src/include/extlibs/glog /Volumes/SSD/Git/RGAL/build/src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/include/extlibs/glog/CMakeFiles/NightlyConfigure.dir/depend

