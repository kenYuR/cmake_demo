cmake_minimum_required(VERSION 3.0) 

file(GLOB dir_list ${PROJECT_SOURCE_DIR} module*)

list(REMOVE_AT dir_list 0)

foreach(f ${dir_list})
    message(${f})
    file(GLOB_RECURSE cmake_list ${f} ${f}/*.cmake)
    foreach(c ${cmake_list})
        message(${c})
    endforeach()
endforeach()
