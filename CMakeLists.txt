# cmake_minimum_required(VERSION <specify CMake version here>)
cmake_minimum_required(VERSION 3.20)
project(c_binaural)
#set(CMAKE_CXX_STANDARD 17)

set(PHONON_DIR "C:/Users/mario/OneDrive/Documents/cours/FYC/c-binaural/steamaudio/lib/windows-x64")

# Required libraries
find_library(OGREMAIN_LIB
        NAMES phonon.dll
        HINTS "${PHONON_DIR}/lib/phonon.lib")

message("linking steam audio phon dll")
include_directories(steamaudio)
include_directories(steamaudio/include)
message("making execubatable")
add_executable(c_binaural
        steamaudio/include/phonon.h
        steamaudio/include/phonon_interfaces.h
        steamaudio/include/phonon_version.h
        main.cpp)
target_link_libraries(c_binaural PUBLIC
        phonon
        )