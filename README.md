# cc65_cmake
Hello World for CC65/CMAKE

The flags are set by default for Commodore 64.
All preferred CC65 flags can be set with target_compile_options() command.
This can be done on module basis.


Required software:

This should work in WSL or Linux.

CC65 compiler suite:
    sudo apt install -y cc65
CMake:
    sudo apt install -y cmake

Ninja-build or GNU Make based build environment (personal preference):
    sudo apt install -y ninja-build
    or/and
    sudo apt install -y build-essential

run get_tools.sh to get this done automatically.


See build.sh how to use cmake.

Hint: This works also straight of the box with Visual Studio Code and CMake plugin