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
CMAKE_SOURCE_DIR = /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts

# Include any dependencies generated for this target.
include CMakeFiles/armc-016.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/armc-016.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/armc-016.dir/flags.make

CMakeFiles/armc-016.dir/armc-016.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/armc-016.c.obj: ../armc-016.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/armc-016.dir/armc-016.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/armc-016.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-016.c

CMakeFiles/armc-016.dir/armc-016.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/armc-016.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-016.c > CMakeFiles/armc-016.dir/armc-016.c.i

CMakeFiles/armc-016.dir/armc-016.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/armc-016.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-016.c -o CMakeFiles/armc-016.dir/armc-016.c.s

CMakeFiles/armc-016.dir/armc-016.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/armc-016.c.obj.requires

CMakeFiles/armc-016.dir/armc-016.c.obj.provides: CMakeFiles/armc-016.dir/armc-016.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/armc-016.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/armc-016.c.obj.provides

CMakeFiles/armc-016.dir/armc-016.c.obj.provides.build: CMakeFiles/armc-016.dir/armc-016.c.obj


CMakeFiles/armc-016.dir/armc-cstartup.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/armc-cstartup.c.obj: ../armc-cstartup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/armc-016.dir/armc-cstartup.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/armc-cstartup.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-cstartup.c

CMakeFiles/armc-016.dir/armc-cstartup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/armc-cstartup.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-cstartup.c > CMakeFiles/armc-016.dir/armc-cstartup.c.i

CMakeFiles/armc-016.dir/armc-cstartup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/armc-cstartup.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-cstartup.c -o CMakeFiles/armc-016.dir/armc-cstartup.c.s

CMakeFiles/armc-016.dir/armc-cstartup.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/armc-cstartup.c.obj.requires

CMakeFiles/armc-016.dir/armc-cstartup.c.obj.provides: CMakeFiles/armc-016.dir/armc-cstartup.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/armc-cstartup.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/armc-cstartup.c.obj.provides

CMakeFiles/armc-016.dir/armc-cstartup.c.obj.provides.build: CMakeFiles/armc-016.dir/armc-cstartup.c.obj


CMakeFiles/armc-016.dir/armc-cstubs.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/armc-cstubs.c.obj: ../armc-cstubs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/armc-016.dir/armc-cstubs.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/armc-cstubs.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-cstubs.c

CMakeFiles/armc-016.dir/armc-cstubs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/armc-cstubs.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-cstubs.c > CMakeFiles/armc-016.dir/armc-cstubs.c.i

CMakeFiles/armc-016.dir/armc-cstubs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/armc-cstubs.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-cstubs.c -o CMakeFiles/armc-016.dir/armc-cstubs.c.s

CMakeFiles/armc-016.dir/armc-cstubs.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/armc-cstubs.c.obj.requires

CMakeFiles/armc-016.dir/armc-cstubs.c.obj.provides: CMakeFiles/armc-016.dir/armc-cstubs.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/armc-cstubs.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/armc-cstubs.c.obj.provides

CMakeFiles/armc-016.dir/armc-cstubs.c.obj.provides.build: CMakeFiles/armc-016.dir/armc-cstubs.c.obj


CMakeFiles/armc-016.dir/armc-start.S.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/armc-start.S.obj: ../armc-start.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building ASM object CMakeFiles/armc-016.dir/armc-start.S.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/armc-016.dir/armc-start.S.obj -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/armc-start.S

CMakeFiles/armc-016.dir/armc-start.S.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/armc-start.S.obj.requires

CMakeFiles/armc-016.dir/armc-start.S.obj.provides: CMakeFiles/armc-016.dir/armc-start.S.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/armc-start.S.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/armc-start.S.obj.provides

CMakeFiles/armc-016.dir/armc-start.S.obj.provides.build: CMakeFiles/armc-016.dir/armc-start.S.obj


CMakeFiles/armc-016.dir/rpi-armtimer.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/rpi-armtimer.c.obj: ../rpi-armtimer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/armc-016.dir/rpi-armtimer.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/rpi-armtimer.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-armtimer.c

CMakeFiles/armc-016.dir/rpi-armtimer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/rpi-armtimer.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-armtimer.c > CMakeFiles/armc-016.dir/rpi-armtimer.c.i

CMakeFiles/armc-016.dir/rpi-armtimer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/rpi-armtimer.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-armtimer.c -o CMakeFiles/armc-016.dir/rpi-armtimer.c.s

CMakeFiles/armc-016.dir/rpi-armtimer.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/rpi-armtimer.c.obj.requires

CMakeFiles/armc-016.dir/rpi-armtimer.c.obj.provides: CMakeFiles/armc-016.dir/rpi-armtimer.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/rpi-armtimer.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/rpi-armtimer.c.obj.provides

CMakeFiles/armc-016.dir/rpi-armtimer.c.obj.provides.build: CMakeFiles/armc-016.dir/rpi-armtimer.c.obj


CMakeFiles/armc-016.dir/rpi-aux.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/rpi-aux.c.obj: ../rpi-aux.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/armc-016.dir/rpi-aux.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/rpi-aux.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-aux.c

CMakeFiles/armc-016.dir/rpi-aux.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/rpi-aux.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-aux.c > CMakeFiles/armc-016.dir/rpi-aux.c.i

CMakeFiles/armc-016.dir/rpi-aux.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/rpi-aux.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-aux.c -o CMakeFiles/armc-016.dir/rpi-aux.c.s

CMakeFiles/armc-016.dir/rpi-aux.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/rpi-aux.c.obj.requires

CMakeFiles/armc-016.dir/rpi-aux.c.obj.provides: CMakeFiles/armc-016.dir/rpi-aux.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/rpi-aux.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/rpi-aux.c.obj.provides

CMakeFiles/armc-016.dir/rpi-aux.c.obj.provides.build: CMakeFiles/armc-016.dir/rpi-aux.c.obj


CMakeFiles/armc-016.dir/rpi-gpio.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/rpi-gpio.c.obj: ../rpi-gpio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/armc-016.dir/rpi-gpio.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/rpi-gpio.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-gpio.c

CMakeFiles/armc-016.dir/rpi-gpio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/rpi-gpio.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-gpio.c > CMakeFiles/armc-016.dir/rpi-gpio.c.i

CMakeFiles/armc-016.dir/rpi-gpio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/rpi-gpio.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-gpio.c -o CMakeFiles/armc-016.dir/rpi-gpio.c.s

CMakeFiles/armc-016.dir/rpi-gpio.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/rpi-gpio.c.obj.requires

CMakeFiles/armc-016.dir/rpi-gpio.c.obj.provides: CMakeFiles/armc-016.dir/rpi-gpio.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/rpi-gpio.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/rpi-gpio.c.obj.provides

CMakeFiles/armc-016.dir/rpi-gpio.c.obj.provides.build: CMakeFiles/armc-016.dir/rpi-gpio.c.obj


CMakeFiles/armc-016.dir/rpi-interrupts.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/rpi-interrupts.c.obj: ../rpi-interrupts.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/armc-016.dir/rpi-interrupts.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/rpi-interrupts.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-interrupts.c

CMakeFiles/armc-016.dir/rpi-interrupts.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/rpi-interrupts.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-interrupts.c > CMakeFiles/armc-016.dir/rpi-interrupts.c.i

CMakeFiles/armc-016.dir/rpi-interrupts.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/rpi-interrupts.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-interrupts.c -o CMakeFiles/armc-016.dir/rpi-interrupts.c.s

CMakeFiles/armc-016.dir/rpi-interrupts.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/rpi-interrupts.c.obj.requires

CMakeFiles/armc-016.dir/rpi-interrupts.c.obj.provides: CMakeFiles/armc-016.dir/rpi-interrupts.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/rpi-interrupts.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/rpi-interrupts.c.obj.provides

CMakeFiles/armc-016.dir/rpi-interrupts.c.obj.provides.build: CMakeFiles/armc-016.dir/rpi-interrupts.c.obj


CMakeFiles/armc-016.dir/rpi-mailbox.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/rpi-mailbox.c.obj: ../rpi-mailbox.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/armc-016.dir/rpi-mailbox.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/rpi-mailbox.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-mailbox.c

CMakeFiles/armc-016.dir/rpi-mailbox.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/rpi-mailbox.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-mailbox.c > CMakeFiles/armc-016.dir/rpi-mailbox.c.i

CMakeFiles/armc-016.dir/rpi-mailbox.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/rpi-mailbox.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-mailbox.c -o CMakeFiles/armc-016.dir/rpi-mailbox.c.s

CMakeFiles/armc-016.dir/rpi-mailbox.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/rpi-mailbox.c.obj.requires

CMakeFiles/armc-016.dir/rpi-mailbox.c.obj.provides: CMakeFiles/armc-016.dir/rpi-mailbox.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/rpi-mailbox.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/rpi-mailbox.c.obj.provides

CMakeFiles/armc-016.dir/rpi-mailbox.c.obj.provides.build: CMakeFiles/armc-016.dir/rpi-mailbox.c.obj


CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj: ../rpi-mailbox-interface.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-mailbox-interface.c

CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-mailbox-interface.c > CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.i

CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-mailbox-interface.c -o CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.s

CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj.requires

CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj.provides: CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj.provides

CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj.provides.build: CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj


CMakeFiles/armc-016.dir/rpi-systimer.c.obj: CMakeFiles/armc-016.dir/flags.make
CMakeFiles/armc-016.dir/rpi-systimer.c.obj: ../rpi-systimer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/armc-016.dir/rpi-systimer.c.obj"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/armc-016.dir/rpi-systimer.c.obj   -c /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-systimer.c

CMakeFiles/armc-016.dir/rpi-systimer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-016.dir/rpi-systimer.c.i"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-systimer.c > CMakeFiles/armc-016.dir/rpi-systimer.c.i

CMakeFiles/armc-016.dir/rpi-systimer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-016.dir/rpi-systimer.c.s"
	/usr/local/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/rpi-systimer.c -o CMakeFiles/armc-016.dir/rpi-systimer.c.s

CMakeFiles/armc-016.dir/rpi-systimer.c.obj.requires:

.PHONY : CMakeFiles/armc-016.dir/rpi-systimer.c.obj.requires

CMakeFiles/armc-016.dir/rpi-systimer.c.obj.provides: CMakeFiles/armc-016.dir/rpi-systimer.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-016.dir/build.make CMakeFiles/armc-016.dir/rpi-systimer.c.obj.provides.build
.PHONY : CMakeFiles/armc-016.dir/rpi-systimer.c.obj.provides

CMakeFiles/armc-016.dir/rpi-systimer.c.obj.provides.build: CMakeFiles/armc-016.dir/rpi-systimer.c.obj


# Object files for target armc-016
armc__016_OBJECTS = \
"CMakeFiles/armc-016.dir/armc-016.c.obj" \
"CMakeFiles/armc-016.dir/armc-cstartup.c.obj" \
"CMakeFiles/armc-016.dir/armc-cstubs.c.obj" \
"CMakeFiles/armc-016.dir/armc-start.S.obj" \
"CMakeFiles/armc-016.dir/rpi-armtimer.c.obj" \
"CMakeFiles/armc-016.dir/rpi-aux.c.obj" \
"CMakeFiles/armc-016.dir/rpi-gpio.c.obj" \
"CMakeFiles/armc-016.dir/rpi-interrupts.c.obj" \
"CMakeFiles/armc-016.dir/rpi-mailbox.c.obj" \
"CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj" \
"CMakeFiles/armc-016.dir/rpi-systimer.c.obj"

# External object files for target armc-016
armc__016_EXTERNAL_OBJECTS =

armc-016: CMakeFiles/armc-016.dir/armc-016.c.obj
armc-016: CMakeFiles/armc-016.dir/armc-cstartup.c.obj
armc-016: CMakeFiles/armc-016.dir/armc-cstubs.c.obj
armc-016: CMakeFiles/armc-016.dir/armc-start.S.obj
armc-016: CMakeFiles/armc-016.dir/rpi-armtimer.c.obj
armc-016: CMakeFiles/armc-016.dir/rpi-aux.c.obj
armc-016: CMakeFiles/armc-016.dir/rpi-gpio.c.obj
armc-016: CMakeFiles/armc-016.dir/rpi-interrupts.c.obj
armc-016: CMakeFiles/armc-016.dir/rpi-mailbox.c.obj
armc-016: CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj
armc-016: CMakeFiles/armc-016.dir/rpi-systimer.c.obj
armc-016: CMakeFiles/armc-016.dir/build.make
armc-016: CMakeFiles/armc-016.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C executable armc-016"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/armc-016.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Convert the ELF output file to a binary image"
	arm-none-eabi-objcopy ./armc-016 -O binary ./kernel.img

# Rule to build all files generated by this target.
CMakeFiles/armc-016.dir/build: armc-016

.PHONY : CMakeFiles/armc-016.dir/build

CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/armc-016.c.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/armc-cstartup.c.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/armc-cstubs.c.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/armc-start.S.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/rpi-armtimer.c.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/rpi-aux.c.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/rpi-gpio.c.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/rpi-interrupts.c.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/rpi-mailbox.c.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/rpi-mailbox-interface.c.obj.requires
CMakeFiles/armc-016.dir/requires: CMakeFiles/armc-016.dir/rpi-systimer.c.obj.requires

.PHONY : CMakeFiles/armc-016.dir/requires

CMakeFiles/armc-016.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/armc-016.dir/cmake_clean.cmake
.PHONY : CMakeFiles/armc-016.dir/clean

CMakeFiles/armc-016.dir/depend:
	cd /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016 /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016 /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts /Users/Nikita/Desktop/arm-tutorial-rpi-master/part-5/armc-016/scripts/CMakeFiles/armc-016.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/armc-016.dir/depend
