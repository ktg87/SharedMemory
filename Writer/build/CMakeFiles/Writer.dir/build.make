# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.18.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.18.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/build

# Include any dependencies generated for this target.
include CMakeFiles/Writer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Writer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Writer.dir/flags.make

CMakeFiles/Writer.dir/writer.c.o: CMakeFiles/Writer.dir/flags.make
CMakeFiles/Writer.dir/writer.c.o: ../writer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Writer.dir/writer.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Writer.dir/writer.c.o -c /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/writer.c

CMakeFiles/Writer.dir/writer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Writer.dir/writer.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/writer.c > CMakeFiles/Writer.dir/writer.c.i

CMakeFiles/Writer.dir/writer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Writer.dir/writer.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/writer.c -o CMakeFiles/Writer.dir/writer.c.s

# Object files for target Writer
Writer_OBJECTS = \
"CMakeFiles/Writer.dir/writer.c.o"

# External object files for target Writer
Writer_EXTERNAL_OBJECTS =

Writer: CMakeFiles/Writer.dir/writer.c.o
Writer: CMakeFiles/Writer.dir/build.make
Writer: CMakeFiles/Writer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Writer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Writer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Writer.dir/build: Writer

.PHONY : CMakeFiles/Writer.dir/build

CMakeFiles/Writer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Writer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Writer.dir/clean

CMakeFiles/Writer.dir/depend:
	cd /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/build /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/build /Users/keithguydo/Development/systemProgramming/SharedMemory/Writer/build/CMakeFiles/Writer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Writer.dir/depend

