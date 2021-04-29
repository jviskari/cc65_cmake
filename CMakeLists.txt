cmake_minimum_required(VERSION 3.16.3)

project(hello64.prg C ASM)

set( sources
    src/hello.c
)

add_library(mymodule src/text.s src/module.c)
target_include_directories(mymodule PUBLIC
                            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/inc>
                          )

add_executable(${PROJECT_NAME} ${sources})

target_compile_options(${PROJECT_NAME} PUBLIC -t c64)

target_link_libraries(${PROJECT_NAME} mymodule)

