#!/bin/bash

set -e

CMAKE_VERSION=3.26.3

wget https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION.tar.gz
tar -xzvf cmake-$CMAKE_VERSION.tar.gz
cd cmake-$CMAKE_VERSION
./bootstrap --prefix=/opt/cmake
make -j$(nproc)
make install
