#!/bin/bash

set -e

CMAKE_VERSION=3.30.5

wget -q https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION-linux-x86_64.tar.gz
tar -xzvf cmake-$CMAKE_VERSION-linux-x86_64.tar.gz
mkdir -p /opt/cmake/bin/ 
cp ./cmake-$CMAKE_VERSION-linux-x86_64/bin/cmake /opt/cmake/bin/cmake 
chmod +x /opt/cmake/bin/cmake