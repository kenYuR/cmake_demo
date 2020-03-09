cmake_minimum_required(VERSION 3.0)

project(mytest VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

configure_file(mytestConfig.h.in mytestConfig.h)

add_executable(mytest mytest.c)

target_include_directories(mytest PUBLIC "${PROJECT_BINARY_DIR}")
