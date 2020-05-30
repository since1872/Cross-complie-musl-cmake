cmake_minimum_required(VERSION 3.0)
project(hello_world)


# CONFIG static Release  and  strip  Release
set(CMAKE_EXE_LINKER_FLAGS "-static")
set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -s")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -s")


# use musl_cc triplets
if(NOT CURRENT_MUSL_CC_TARGET)
    set(CURRENT_MUSL_CC_TARGET "x86_64-linux-musl")
endif()
include($ENV{MUSL_CC_TRIPLETS}/${CURRENT_MUSL_CC_TARGET}.cmake)
include($ENV{MUSL_CC_TRIPLETS}/common.cmake)


add_executable(hello_world src/hello_world.cpp)


