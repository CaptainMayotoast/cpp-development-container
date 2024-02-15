#!/bin/bash
set -e

# boost
docker build -f ./boost_image/Dockerfile.boost -t boost:12.2 ./boost_image

# cmake
docker build -f ./cmake_image/Dockerfile.cmake -t cmake:12.2 ./cmake_image

# grpc
docker build -f ./grpc_image/Dockerfile.grpc -t grpc:12.2 ./grpc_image

# Intel MKL
docker build -f ./intel_mkl_image/Dockerfile.mkl -t intel-mkl:12.2 ./intel_mkl_image

# Intel TBB
docker build -f ./intel_tbb_image/Dockerfile.tbb -t intel-tbb:12.2 ./intel_tbb_image

# meson-build (final build image)
docker build -f ./Dockerfile.meson-build -t meson-build:12.2 .