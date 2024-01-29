#!/bin/bash

set -e

/opt/cmake/bin/cmake --version

# https://github.com/kmhofmann/selene/blob/master/docs/building.md#static-vs-shared-libraries
# the default is to build statically 

git clone https://github.com/kmhofmann/selene.git
cd selene
mkdir build && cd build
/opt/cmake/bin/cmake -DCMAKE_BUILD_TYPE=Release -DSELENE_BUILD_ALL=OFF -DSELENE_USE_OPENCV=OFF -DSELENE_USE_LIBTIFF=OFF -DSELENE_BUILD_TESTS=OFF ..
/opt/cmake/bin/cmake --build . -j 

# for the config and version files at /selene/build/selene/
mkdir -p /selene/selene

# collect headers to /usr/include
find /selene/build/selene/ -name "*.hpp" -exec install -D {} /selene/selene \;
# collect libs (static by default) to /usr/lib/x86_64-linux-gnu/
find /selene/build/ -name "*.a" -exec install -D {} /usr/lib/x86_64-linux-gnu/ \;

