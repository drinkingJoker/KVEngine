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
CMAKE_SOURCE_DIR = /home/leaf/code/cpp/KVEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leaf/code/cpp/KVEngine/build

# Include any dependencies generated for this target.
include CMakeFiles/KVEngine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/KVEngine.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/KVEngine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/KVEngine.dir/flags.make

CMakeFiles/KVEngine.dir/main.cpp.o: CMakeFiles/KVEngine.dir/flags.make
CMakeFiles/KVEngine.dir/main.cpp.o: ../main.cpp
CMakeFiles/KVEngine.dir/main.cpp.o: CMakeFiles/KVEngine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leaf/code/cpp/KVEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/KVEngine.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/KVEngine.dir/main.cpp.o -MF CMakeFiles/KVEngine.dir/main.cpp.o.d -o CMakeFiles/KVEngine.dir/main.cpp.o -c /home/leaf/code/cpp/KVEngine/main.cpp

CMakeFiles/KVEngine.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KVEngine.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leaf/code/cpp/KVEngine/main.cpp > CMakeFiles/KVEngine.dir/main.cpp.i

CMakeFiles/KVEngine.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KVEngine.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leaf/code/cpp/KVEngine/main.cpp -o CMakeFiles/KVEngine.dir/main.cpp.s

# Object files for target KVEngine
KVEngine_OBJECTS = \
"CMakeFiles/KVEngine.dir/main.cpp.o"

# External object files for target KVEngine
KVEngine_EXTERNAL_OBJECTS =

KVEngine: CMakeFiles/KVEngine.dir/main.cpp.o
KVEngine: CMakeFiles/KVEngine.dir/build.make
KVEngine: CMakeFiles/KVEngine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leaf/code/cpp/KVEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable KVEngine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KVEngine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/KVEngine.dir/build: KVEngine
.PHONY : CMakeFiles/KVEngine.dir/build

CMakeFiles/KVEngine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/KVEngine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/KVEngine.dir/clean

CMakeFiles/KVEngine.dir/depend:
	cd /home/leaf/code/cpp/KVEngine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leaf/code/cpp/KVEngine /home/leaf/code/cpp/KVEngine /home/leaf/code/cpp/KVEngine/build /home/leaf/code/cpp/KVEngine/build /home/leaf/code/cpp/KVEngine/build/CMakeFiles/KVEngine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/KVEngine.dir/depend

