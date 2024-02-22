#!/bin/bash

set -e

/opt/cmake/bin/cmake --version

git clone --recurse-submodules -b v1.59.3 --depth 1 --shallow-submodules https://github.com/grpc/grpc && \
      cd grpc && \
      mkdir -p cmake/build && \
      pushd cmake/build && \
      /opt/cmake/bin/cmake -DgRPC_INSTALL=ON \
            -DgRPC_BUILD_TESTS=OFF \
            -DCMAKE_INSTALL_PREFIX=$MY_INSTALL_DIR \
            -DBUILD_SHARED_LIBS=ON \
            -DCMAKE_BUILD_TYPE=Release \
            ../.. && \
      make -j$(nproc) && \
      make install && 
      popd