#!/bin/bash
set -e

# boost
buildah build -f ./boost_image/Dockerfile.boost -t boost:latest ./boost_image

# cmake
buildah build -f ./cmake_image/Dockerfile.cmake -t cmake:latest ./cmake_image

# grpc
buildah build -f ./grpc_image/Dockerfile.grpc -t grpc:latest ./grpc_image

# Intel MKL
buildah build -f ./intel_mkl_image/Dockerfile.mkl -t intel-mkl:latest ./intel_mkl_image

# Intel TBB
buildah build -f ./intel_tbb_image/Dockerfile.tbb -t intel-tbb:latest ./intel_tbb_image

# meson-build (final build image)
buildah build -f ./Dockerfile.meson-build -t meson-build:latest .