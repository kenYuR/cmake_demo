cmake_minimum_required(VERSION 3.0)

project(mytest)

SET(CMAKE_SYSTEM_NAME Linux)
SET(TOOLCHAIN_DIR "/root/myPro/branch/project_new/android/pro/android-ndk-r10d/toolchains/x86_64-4.9/prebuilt/linux-x86/bin")
SET(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/x86_64-linux-android-gcc)
SET(CMAKE_C_FLAGS "-march=x86-64")
SET(SYSROOT "/root/myPro/branch/project_new/android/pro/android-ndk-r10d/platforms/android-21/arch-x86_64/usr")
INCLUDE_DIRECTORIES(${SYSROOT}/include)
LINK_DIRECTORIES(${SYSROOT}/lib)

configure_file(${PROJECT_SOURCE_DIR}/../mytestConfig.h.in mytestConfig.h)
configure_file(${PROJECT_SOURCE_DIR}/../mytest.h.in mytest.h)

AUX_SOURCE_DIRECTORY(.. DIR_SOURCE) 

add_library(mytest STATIC ${DIR_SOURCE})

target_include_directories(mytest PUBLIC "${PROJECT_BINARY_DIR}")
