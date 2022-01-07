cmake_minimum_required(VERSION 3.16.3)
#Note this line must be before project!
set(CMAKE_TOOLCHAIN_FILE toolchain/cc65-toolchain.cmake)
################################################################################
#
project(hello64 C ASM)
#set here the name for your prg file
set(executable_name ${CMAKE_PROJECT_NAME}.prg)
#set here the path to file that has the main function
set(entry_point src/hello_main.c)
################################################################################
#create archives
add_subdirectory(example_module)
################################################################################
# linking of executable
add_executable(${executable_name} ${entry_point})
target_compile_options(${executable_name} PUBLIC -t c64)
target_link_libraries(${executable_name}
  PUBLIC
  #list all modules which your build depends on here.
  #Let the cmake take care of paths and linking order
  example_module
  )

