# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\mario\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5457.51\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\mario\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5457.51\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\c_binaural.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\c_binaural.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\c_binaural.dir\flags.make

CMakeFiles\c_binaural.dir\main.cpp.obj: CMakeFiles\c_binaural.dir\flags.make
CMakeFiles\c_binaural.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/c_binaural.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\c_binaural.dir\main.cpp.obj /FdCMakeFiles\c_binaural.dir\ /FS -c C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\main.cpp
<<

CMakeFiles\c_binaural.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c_binaural.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\c_binaural.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\main.cpp
<<

CMakeFiles\c_binaural.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c_binaural.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\c_binaural.dir\main.cpp.s /c C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\main.cpp
<<

# Object files for target c_binaural
c_binaural_OBJECTS = \
"CMakeFiles\c_binaural.dir\main.cpp.obj"

# External object files for target c_binaural
c_binaural_EXTERNAL_OBJECTS =

c_binaural.exe: CMakeFiles\c_binaural.dir\main.cpp.obj
c_binaural.exe: CMakeFiles\c_binaural.dir\build.make
c_binaural.exe: CMakeFiles\c_binaural.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable c_binaural.exe"
	C:\Users\mario\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5457.51\bin\cmake\win\bin\cmake.exe -E vs_link_exe --intdir=CMakeFiles\c_binaural.dir --rc=rc --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x64\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\c_binaural.dir\objects1.rsp @<<
 /out:c_binaural.exe /implib:c_binaural.lib /pdb:C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\cmake-build-debug\c_binaural.pdb /version:0.0 /machine:x64 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\c_binaural.dir\build: c_binaural.exe
.PHONY : CMakeFiles\c_binaural.dir\build

CMakeFiles\c_binaural.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\c_binaural.dir\cmake_clean.cmake
.PHONY : CMakeFiles\c_binaural.dir\clean

CMakeFiles\c_binaural.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\cmake-build-debug C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\cmake-build-debug C:\Users\mario\OneDrive\Documents\cours\FYC\c-binaural\cmake-build-debug\CMakeFiles\c_binaural.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\c_binaural.dir\depend

