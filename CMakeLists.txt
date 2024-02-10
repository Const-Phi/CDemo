cmake_minimum_required(VERSION 3.6)
project(CDemo C)

set(CMAKE_C_STANDARD 17)

if (MSVC)
    # warning level 4
    add_compile_options(/W4)
else()
    # additional warnings
    add_compile_options(-Wall -Wextra -Wpedantic)
endif()

include_directories(include)

add_executable(CDemo ./main.c ./src/libdemo.c ./include/libdemo.h)

# ВОЗМОЖНО СТОИТ ЗАВЕРНУТЬ В ПРОВЕРКУ КОМПИЛЯТОРА!
# CDemo -- startup project see: https://stackoverflow.com/a/37994396/2761685
set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT CDemo)
