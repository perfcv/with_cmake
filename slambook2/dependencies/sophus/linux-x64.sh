#!/bin/bash

# clang 13 failed to compile. fallback to gcc
unset CC
unset CXX

BUILD_DIR=linux-x64
mkdir -p $BUILD_DIR
cd $BUILD_DIR
cmake ../.. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/home/zz/artifact/sophus/master/linux-x64 -DUSE_BASIC_LOGGING=ON
cmake --build . -j
cmake --install .
cd ..
