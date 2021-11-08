# cmake_minimum_required(VERSION <specify CMake version here>)
cmake_minimum_required(VERSION 3.20)
project(c_binaural)

#set(CMAKE_CXX_STANDARD 17)

include_directories(steamaudio)
include_directories(steamaudio/include)

add_executable(c_binaural
        steamaudio/include/phonon.h
        steamaudio/include/phonon_interfaces.h
        steamaudio/include/phonon_version.h
        main.cpp)
