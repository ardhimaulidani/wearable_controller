# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/helos/esp/esp-idf/wearable

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/helos/esp/esp-idf/wearable/build

# Utility rule file for custom_bundle.

# Include the progress variables for this target.
include esp-idf/mbedtls/CMakeFiles/custom_bundle.dir/progress.make

custom_bundle: esp-idf/mbedtls/CMakeFiles/custom_bundle.dir/build.make

.PHONY : custom_bundle

# Rule to build all files generated by this target.
esp-idf/mbedtls/CMakeFiles/custom_bundle.dir/build: custom_bundle

.PHONY : esp-idf/mbedtls/CMakeFiles/custom_bundle.dir/build

esp-idf/mbedtls/CMakeFiles/custom_bundle.dir/clean:
	cd /home/helos/esp/esp-idf/wearable/build/esp-idf/mbedtls && $(CMAKE_COMMAND) -P CMakeFiles/custom_bundle.dir/cmake_clean.cmake
.PHONY : esp-idf/mbedtls/CMakeFiles/custom_bundle.dir/clean

esp-idf/mbedtls/CMakeFiles/custom_bundle.dir/depend:
	cd /home/helos/esp/esp-idf/wearable/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/helos/esp/esp-idf/wearable /home/helos/esp/esp-idf/components/mbedtls /home/helos/esp/esp-idf/wearable/build /home/helos/esp/esp-idf/wearable/build/esp-idf/mbedtls /home/helos/esp/esp-idf/wearable/build/esp-idf/mbedtls/CMakeFiles/custom_bundle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/mbedtls/CMakeFiles/custom_bundle.dir/depend

