# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.6.0_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.6.0_1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts

# Include any dependencies generated for this target.
include CMakeFiles/armc-012.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/armc-012.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/armc-012.dir/flags.make

CMakeFiles/armc-012.dir/armc-012.c.obj: CMakeFiles/armc-012.dir/flags.make
CMakeFiles/armc-012.dir/armc-012.c.obj: ../armc-012.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/armc-012.dir/armc-012.c.obj"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-012.dir/armc-012.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012.c

CMakeFiles/armc-012.dir/armc-012.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-012.dir/armc-012.c.i"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012.c > CMakeFiles/armc-012.dir/armc-012.c.i

CMakeFiles/armc-012.dir/armc-012.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-012.dir/armc-012.c.s"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012.c -o CMakeFiles/armc-012.dir/armc-012.c.s

CMakeFiles/armc-012.dir/armc-012.c.obj.requires:

.PHONY : CMakeFiles/armc-012.dir/armc-012.c.obj.requires

CMakeFiles/armc-012.dir/armc-012.c.obj.provides: CMakeFiles/armc-012.dir/armc-012.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-012.dir/build.make CMakeFiles/armc-012.dir/armc-012.c.obj.provides.build
.PHONY : CMakeFiles/armc-012.dir/armc-012.c.obj.provides

CMakeFiles/armc-012.dir/armc-012.c.obj.provides.build: CMakeFiles/armc-012.dir/armc-012.c.obj


CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj: CMakeFiles/armc-012.dir/flags.make
CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj: ../armc-012-cstartup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012-cstartup.c

CMakeFiles/armc-012.dir/armc-012-cstartup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-012.dir/armc-012-cstartup.c.i"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012-cstartup.c > CMakeFiles/armc-012.dir/armc-012-cstartup.c.i

CMakeFiles/armc-012.dir/armc-012-cstartup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-012.dir/armc-012-cstartup.c.s"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012-cstartup.c -o CMakeFiles/armc-012.dir/armc-012-cstartup.c.s

CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj.requires:

.PHONY : CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj.requires

CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj.provides: CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-012.dir/build.make CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj.provides.build
.PHONY : CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj.provides

CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj.provides.build: CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj


CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj: CMakeFiles/armc-012.dir/flags.make
CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj: ../armc-012-cstubs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012-cstubs.c

CMakeFiles/armc-012.dir/armc-012-cstubs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-012.dir/armc-012-cstubs.c.i"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012-cstubs.c > CMakeFiles/armc-012.dir/armc-012-cstubs.c.i

CMakeFiles/armc-012.dir/armc-012-cstubs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-012.dir/armc-012-cstubs.c.s"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012-cstubs.c -o CMakeFiles/armc-012.dir/armc-012-cstubs.c.s

CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj.requires:

.PHONY : CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj.requires

CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj.provides: CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-012.dir/build.make CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj.provides.build
.PHONY : CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj.provides

CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj.provides.build: CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj


CMakeFiles/armc-012.dir/armc-012-start.S.obj: CMakeFiles/armc-012.dir/flags.make
CMakeFiles/armc-012.dir/armc-012-start.S.obj: ../armc-012-start.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building ASM object CMakeFiles/armc-012.dir/armc-012-start.S.obj"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/armc-012.dir/armc-012-start.S.obj -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/armc-012-start.S

CMakeFiles/armc-012.dir/armc-012-start.S.obj.requires:

.PHONY : CMakeFiles/armc-012.dir/armc-012-start.S.obj.requires

CMakeFiles/armc-012.dir/armc-012-start.S.obj.provides: CMakeFiles/armc-012.dir/armc-012-start.S.obj.requires
	$(MAKE) -f CMakeFiles/armc-012.dir/build.make CMakeFiles/armc-012.dir/armc-012-start.S.obj.provides.build
.PHONY : CMakeFiles/armc-012.dir/armc-012-start.S.obj.provides

CMakeFiles/armc-012.dir/armc-012-start.S.obj.provides.build: CMakeFiles/armc-012.dir/armc-012-start.S.obj


CMakeFiles/armc-012.dir/rpi-systimer.c.obj: CMakeFiles/armc-012.dir/flags.make
CMakeFiles/armc-012.dir/rpi-systimer.c.obj: ../rpi-systimer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/armc-012.dir/rpi-systimer.c.obj"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-012.dir/rpi-systimer.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/rpi-systimer.c

CMakeFiles/armc-012.dir/rpi-systimer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-012.dir/rpi-systimer.c.i"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/rpi-systimer.c > CMakeFiles/armc-012.dir/rpi-systimer.c.i

CMakeFiles/armc-012.dir/rpi-systimer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-012.dir/rpi-systimer.c.s"
	/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/rpi-systimer.c -o CMakeFiles/armc-012.dir/rpi-systimer.c.s

CMakeFiles/armc-012.dir/rpi-systimer.c.obj.requires:

.PHONY : CMakeFiles/armc-012.dir/rpi-systimer.c.obj.requires

CMakeFiles/armc-012.dir/rpi-systimer.c.obj.provides: CMakeFiles/armc-012.dir/rpi-systimer.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-012.dir/build.make CMakeFiles/armc-012.dir/rpi-systimer.c.obj.provides.build
.PHONY : CMakeFiles/armc-012.dir/rpi-systimer.c.obj.provides

CMakeFiles/armc-012.dir/rpi-systimer.c.obj.provides.build: CMakeFiles/armc-012.dir/rpi-systimer.c.obj


# Object files for target armc-012
armc__012_OBJECTS = \
"CMakeFiles/armc-012.dir/armc-012.c.obj" \
"CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj" \
"CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj" \
"CMakeFiles/armc-012.dir/armc-012-start.S.obj" \
"CMakeFiles/armc-012.dir/rpi-systimer.c.obj"

# External object files for target armc-012
armc__012_EXTERNAL_OBJECTS =

armc-012: CMakeFiles/armc-012.dir/armc-012.c.obj
armc-012: CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj
armc-012: CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj
armc-012: CMakeFiles/armc-012.dir/armc-012-start.S.obj
armc-012: CMakeFiles/armc-012.dir/rpi-systimer.c.obj
armc-012: CMakeFiles/armc-012.dir/build.make
armc-012: CMakeFiles/armc-012.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable armc-012"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/armc-012.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Convert the ELF output file to a binary image"
	arm-none-eabi-objcopy ./armc-012 -O binary ./kernel.img

# Rule to build all files generated by this target.
CMakeFiles/armc-012.dir/build: armc-012

.PHONY : CMakeFiles/armc-012.dir/build

CMakeFiles/armc-012.dir/requires: CMakeFiles/armc-012.dir/armc-012.c.obj.requires
CMakeFiles/armc-012.dir/requires: CMakeFiles/armc-012.dir/armc-012-cstartup.c.obj.requires
CMakeFiles/armc-012.dir/requires: CMakeFiles/armc-012.dir/armc-012-cstubs.c.obj.requires
CMakeFiles/armc-012.dir/requires: CMakeFiles/armc-012.dir/armc-012-start.S.obj.requires
CMakeFiles/armc-012.dir/requires: CMakeFiles/armc-012.dir/rpi-systimer.c.obj.requires

.PHONY : CMakeFiles/armc-012.dir/requires

CMakeFiles/armc-012.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/armc-012.dir/cmake_clean.cmake
.PHONY : CMakeFiles/armc-012.dir/clean

CMakeFiles/armc-012.dir/depend:
	cd /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012 /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012 /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-3/arm012/scripts/CMakeFiles/armc-012.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/armc-012.dir/depend
