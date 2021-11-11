cmake_minimum_required(VERSION 3.20)

project(c_binaural)

add_executable(c_binaural main.cpp)

# Windows.
if(WIN32)
    # 64-bit.
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        set(SteamAudio_LIBRARY "${CMAKE_CURRENT_SOURCE_DIR}/steamaudio/lib/windows-x64/phonon.lib")
        set(SteamAudio_DLL "${CMAKE_CURRENT_SOURCE_DIR}/steamaudio/lib/windows-x64/phonon.dll")
    # 32-bit.
    else()
        set(SteamAudio_LIBRARY "${CMAKE_CURRENT_SOURCE_DIR}/steamaudio/lib/windows-x86/phonon.lib")
        set(SteamAudio_DLL "${CMAKE_CURRENT_SOURCE_DIR}/steamaudio/lib/windows-x86/phonon.dll")
    endif()
    
    # Copy DLL to build directory.
    if(MSVC)
        configure_file(${SteamAudio_DLL} ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/Debug/phonon.dll COPYONLY)
        configure_file(${SteamAudio_DLL} ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/Release/phonon.dll COPYONLY)
    else()
        configure_file(${SteamAudio_DLL} phonon.dll COPYONLY)
    endif()
# Mac.
elseif(APPLE)
    set(SteamAudio_LIBRARY "${CMAKE_CURRENT_SOURCE_DIR}/steamaudio/lib/osx/libphonon.dylib")
# Linux.
elseif(UNIX)
    # 64-bit.
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        set(SteamAudio_LIBRARY "${CMAKE_CURRENT_SOURCE_DIR}/steamaudio/lib/linux-x64/libphonon.so")
    # 32-bit.
    else()
        set(SteamAudio_LIBRARY "${CMAKE_CURRENT_SOURCE_DIR}/steamaudio/lib/linux-x86/libphonon.so")
    endif()
endif()

target_include_directories(c_binaural PUBLIC steamaudio/include)
target_link_libraries(c_binaural ${SteamAudio_LIBRARY})        
