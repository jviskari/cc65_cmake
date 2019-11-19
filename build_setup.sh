#!/bin/sh -e

rm -Rf ./build

mkdir -p build
cd build

cmake -G "Unix Makefiles" -DCMAKE_TOOLCHAIN_FILE=cc65-toolchain.cmake ..
