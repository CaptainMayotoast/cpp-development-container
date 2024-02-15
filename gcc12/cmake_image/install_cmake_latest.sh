#!/bin/bash

set -e

# https://github.com/Kitware/CMake/releases

CMAKE_VERSION=3.28.1

wget https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION.tar.gz
tar -xzvf cmake-$CMAKE_VERSION.tar.gz
cd cmake-$CMAKE_VERSION
./bootstrap --prefix=/opt/cmake
make -j$(nproc)
make install
