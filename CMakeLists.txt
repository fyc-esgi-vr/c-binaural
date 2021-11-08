# cmake_minimum_required(VERSION <specify CMake version here>)
cmake_minimum_required(VERSION 3.20)
project(c_binaural C)

set(CMAKE_C_STANDARD 11)

include_directories(steamaudio)
include_directories(steamaudio/include)

add_executable(c_binaural
        steamaudio/include/phonon.h
        steamaudio/include/phonon_interfaces.h
        steamaudio/include/phonon_version.h
        main.c)
