cmake_minimum_required(VERSION 2.8.5)

project(test1)
project(test2)

add_executable(test1 test1.c)
add_executable(test2 test2.c)

enable_testing()
add_test(test1 test1)
add_test(test2 test2)
set_tests_properties(test1 PROPERTIES PASS_REGULAR_EXPERSSION "---test1---")
set_tests_properties(test2 PROPERTIES PASS_REGULAR_EXPERSSION "---test2---")

