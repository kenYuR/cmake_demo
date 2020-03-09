cmake_minimum_required(VERSION 3.0)

project(mytest)

option(CROSS_TYPE "select cross" X86)

if(CROSS_TYPE STREQUAL "ARMEABI")
    set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/modules)
    find_package(armeabi REQUIRED)
elseif(CROSS_TYPE STREQUAL "ARMV7_NEON")
    set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/modules)
    find_package(armv7_neon REQUIRED)
elseif(CROSS_TYPE STREQUAL "ARMV7_VFPV3")
    set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/modules)
    find_package(armv7_vfpv3 REQUIRED)
elseif(CROSS_TYPE STREQUAL "ARM64_V8A")
    set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/modules)
    find_package(arm64_v8a REQUIRED)
elseif(CROSS_TYPE STREQUAL "AND_X86")
    set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/modules)
    find_package(and_x86 REQUIRED)
elseif(CROSS_TYPE STREQUAL "AND_X86_64")
    set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/modules)
    find_package(and_x86_64 REQUIRED)
elseif(CROSS_TYPE STREQUAL "MIPS")
    set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/modules)
    find_package(mips REQUIRED)
elseif(CROSS_TYPE STREQUAL "MIPS64")
    set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/modules)
    find_package(mips64 REQUIRED)
else()
    MESSAGE("-----import x86-----")
endif()


configure_file(mytestConfig.h.in mytestConfig.h)
configure_file(mytest.h.in mytest.h)

AUX_SOURCE_DIRECTORY(. DIR_SOURCE)

add_library(mytest STATIC ${DIR_SOURCE})

target_include_directories(mytest PUBLIC "${PROJECT_BINARY_DIR}")
