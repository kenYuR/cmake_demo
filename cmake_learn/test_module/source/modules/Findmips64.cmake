MESSAGE("-----import mips64-----")

SET(CMAKE_SYSTEM_NAME Linux)
SET(TOOLCHAIN_DIR "/root/myPro/branch/project_new/android/pro/android-ndk-r10d/toolchains/mips64el-linux-android-4.9/prebuilt/linux-x86/bin")
SET(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/mips64el-linux-android-gcc)
SET(CMAKE_C_FLAGS "-march=mips64r6")
SET(SYSROOT "/root/myPro/branch/project_new/android/pro/android-ndk-r10d/platforms/android-21/arch-mips64/usr")
INCLUDE_DIRECTORIES(${SYSROOT}/include)
LINK_DIRECTORIES(${SYSROOT}/lib)