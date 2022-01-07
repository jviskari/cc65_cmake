#!/bin/sh -e

rm -Rf ./build

mkdir -p build
cd build

#make (sudo apt install build-essential)
#cmake -G "Unix Makefiles" ..
#make

#Ninja (sudo apt install ninja-build)
cmake -G "Ninja" ..
ninja