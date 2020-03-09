cmake_minimum_required(VERSION 3.0)

project(mytest)

configure_file(mytestConfig.h.in mytestConfig.h)
configure_file(mytest.h.in mytest.h)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(mytest STATIC mytest.c)

target_include_directories(mytest PUBLIC "${PROJECT_BINARY_DIR}")
