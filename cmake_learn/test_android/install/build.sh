#!/bin/bash

if [ ! -d "armeabi"  ];then
    mkdir armeabi
else
    echo "armeabi exit"
fi
cd armeabi
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 ../../source/armeabi
cmake --build .
cd -

if [ ! -d "armv7_neon"  ];then
    mkdir armv7_neon
else
    echo "armv7_neon exit"
fi
cd armv7_neon
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 ../../source/armv7_neon
cmake --build .
cd -

if [ ! -d "armv7_vfpv3"  ];then
    mkdir armv7_vfpv3
else
    echo "armv7_vfpv3 exit"
fi
cd armv7_vfpv3
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 ../../source/armv7_vfpv3
cmake --build .
cd -

if [ ! -d "arm64-v8a"  ];then
    mkdir arm64-v8a
else
    echo "arm64-v8a exit"
fi
cd arm64-v8a
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 ../../source/arm64-v8a
cmake --build .
cd -

if [ ! -d "x86"  ];then
    mkdir x86
else
    echo "x86 exit"
fi
cd x86
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 ../../source/x86
cmake --build .
cd -

if [ ! -d "x86-64"  ];then
    mkdir x86-64
else
    echo "x86-64 exit"
fi
cd x86-64
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 ../../source/x86-64
cmake --build .
cd -

if [ ! -d "mips"  ];then
    mkdir mips
else
    echo "mips exit"
fi
cd mips
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 ../../source/mips
cmake --build .
cd -

if [ ! -d "mips64"  ];then
    mkdir mips64
else
    echo "mips64 exit"
fi
cd mips64
cmake -DMYTEST_VERSION_MAJOR=1 -DMYTEST_VERSION_MINOR=0 ../../source/mips64
cmake --build .
cd -
