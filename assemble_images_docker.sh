#!/bin/bash
set -e

# boost
docker build -f ./boost_image/Dockerfile.boost -t boost:latest ./boost_image

# cmake
docker build -f ./cmake_image/Dockerfile.cmake -t cmake:latest ./cmake_image

# grpc
docker build -f ./grpc_image/Dockerfile.grpc -t grpc:latest ./grpc_image

# Intel MKL
docker build -f ./intel_mkl_image/Dockerfile.mkl -t intel-mkl:latest ./intel_mkl_image

# Intel TBB
docker build -f ./intel_tbb_image/Dockerfile.tbb -t intel-tbb:latest ./intel_tbb_image

# meson-build (final build image)
docker build -f ./Dockerfile.meson-build -t meson-build:latest .