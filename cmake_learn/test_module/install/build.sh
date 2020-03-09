#!/bin/bash

#armeabi
if [ ! -d "armeabi"   ];then
    mkdir armeabi
else
    echo "armeabi exit"
fi
cd armeabi
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 -DCROSS_TYPE=ARMEABI ../../source
cmake --build .
cd -

#armv7_neon
if [ ! -d "armv7-neon"   ];then
    mkdir armv7-neon
else
    echo "armv7-neon exit"
fi
cd armv7-neon
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 -DCROSS_TYPE=ARMV7_NEON ../../source
cmake --build .
cd -

#armv7_vfpv3
if [ ! -d "armv7-vfpv3"   ];then
    mkdir armv7-vfpv3
else
    echo "armv7-vfpv3 exit"
fi
cd armv7-vfpv3
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 -DCROSS_TYPE=ARMV7_VFPV3 ../../source
cmake --build .
cd -

#arm64_v8a
if [ ! -d "arm64-v8a"   ];then
    mkdir arm64-v8a
else
    echo "arm64-v8a exit"
fi
cd arm64-v8a
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 -DCROSS_TYPE=ARM64_V8A ../../source
cmake --build .
cd -

#and-x86
if [ ! -d "and-x86"   ];then
    mkdir and-x86
else
    echo "and-x86 exit"
fi
cd and-x86
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 -DCROSS_TYPE=AND_X86 ../../source
cmake --build .
cd -

#and-x86-64
if [ ! -d "and-x86-64"   ];then
    mkdir and-x86-64
else
    echo "and-x86-64 exit"
fi
cd and-x86-64
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 -DCROSS_TYPE=AND_X86_64 ../../source
cmake --build .
cd -

#mips
if [ ! -d "mips"   ];then
    mkdir mips
else
    echo "mips exit"
fi
cd mips
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 -DCROSS_TYPE=MIPS ../../source
cmake --build .
cd -

#mips64
if [ ! -d "mips64"   ];then
    mkdir mips64
else
    echo "mips64 exit"
fi
cd mips64
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 -DCROSS_TYPE=MIPS64 ../../source
cmake --build .
cd -

