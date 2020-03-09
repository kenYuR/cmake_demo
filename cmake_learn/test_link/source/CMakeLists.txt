cmake_minimum_required(VERSION 3.0)

project(Myapp VERSION 1.0)

INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/../../test_libs/install)
LINK_DIRECTORIES(${PROJECT_SOURCE_DIR}/../../test_libs/install)

AUX_SOURCE_DIRECTORY(. DIR_SOURCE)

ADD_EXECUTABLE(myapp ${DIR_SOURCE})

TARGET_LINK_LIBRARIES(myapp libmytest.a)
