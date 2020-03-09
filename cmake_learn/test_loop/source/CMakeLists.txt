cmake_minimum_required(VERSION 3.0)  

set(val a b c)

foreach(f ${val})
    message(${f})
endforeach()
