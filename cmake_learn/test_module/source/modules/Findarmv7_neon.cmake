MESSAGE("-----import armv7_neon-----")

SET(CMAKE_SYSTEM_NAME Linux)
SET(TOOLCHAIN_DIR "/root/myPro/branch/project_new/android/pro/android-ndk-r10d/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86/bin")
SET(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/arm-linux-androideabi-gcc)
SET(CMAKE_C_FLAGS "-mfloat-abi=softfp -mfpu=neon -marm -march=armv7-a -mtune=cortex-a8")
SET(SYSROOT "/root/myPro/branch/project_new/android/pro/android-ndk-r10d/platforms/android-19/arch-arm/usr")
INCLUDE_DIRECTORIES(${SYSROOT}/include)
LINK_DIRECTORIES(${SYSROOT}/lib)