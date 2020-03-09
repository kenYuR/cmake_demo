MESSAGE("-----import arm64_v8a-----")

SET(CMAKE_SYSTEM_NAME Linux)
SET(TOOLCHAIN_DIR "/root/myPro/branch/project_new/android/pro/android-ndk-r10d/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86/bin")
SET(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/aarch64-linux-android-gcc)
SET(CMAKE_C_FLAGS "-march=armv8-a")
SET(SYSROOT "/root/myPro/branch/project_new/android/pro/android-ndk-r10d/platforms/android-21/arch-arm64/usr")
INCLUDE_DIRECTORIES(${SYSROOT}/include)
LINK_DIRECTORIES(${SYSROOT}/lib)