# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\lenin\CLionProjects\SJF

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\lenin\CLionProjects\SJF\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SJF.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SJF.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SJF.dir/flags.make

CMakeFiles/SJF.dir/main.c.obj: CMakeFiles/SJF.dir/flags.make
CMakeFiles/SJF.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lenin\CLionProjects\SJF\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/SJF.dir/main.c.obj"
	"D:\Program Files (x86)\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\SJF.dir\main.c.obj   -c C:\Users\lenin\CLionProjects\SJF\main.c

CMakeFiles/SJF.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SJF.dir/main.c.i"
	"D:\Program Files (x86)\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\lenin\CLionProjects\SJF\main.c > CMakeFiles\SJF.dir\main.c.i

CMakeFiles/SJF.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SJF.dir/main.c.s"
	"D:\Program Files (x86)\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32\bin\gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\lenin\CLionProjects\SJF\main.c -o CMakeFiles\SJF.dir\main.c.s

# Object files for target SJF
SJF_OBJECTS = \
"CMakeFiles/SJF.dir/main.c.obj"

# External object files for target SJF
SJF_EXTERNAL_OBJECTS =

SJF.exe: CMakeFiles/SJF.dir/main.c.obj
SJF.exe: CMakeFiles/SJF.dir/build.make
SJF.exe: CMakeFiles/SJF.dir/linklibs.rsp
SJF.exe: CMakeFiles/SJF.dir/objects1.rsp
SJF.exe: CMakeFiles/SJF.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\lenin\CLionProjects\SJF\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable SJF.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SJF.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SJF.dir/build: SJF.exe

.PHONY : CMakeFiles/SJF.dir/build

CMakeFiles/SJF.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SJF.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SJF.dir/clean

CMakeFiles/SJF.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\lenin\CLionProjects\SJF C:\Users\lenin\CLionProjects\SJF C:\Users\lenin\CLionProjects\SJF\cmake-build-debug C:\Users\lenin\CLionProjects\SJF\cmake-build-debug C:\Users\lenin\CLionProjects\SJF\cmake-build-debug\CMakeFiles\SJF.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SJF.dir/depend

