#!/bin/bash
set -e

# boost
buildah build -f ./boost_image/Dockerfile.boost -t boost:12.2 ./boost_image

# cmake
buildah build -f ./cmake_image/Dockerfile.cmake -t cmake:12.2 ./cmake_image

# grpc
buildah build -f ./grpc_image/Dockerfile.grpc -t grpc:12.2 ./grpc_image

# Intel MKL
buildah build -f ./intel_mkl_image/Dockerfile.mkl -t intel-mkl:12.2 ./intel_mkl_image

# Intel TBB
buildah build -f ./intel_tbb_image/Dockerfile.tbb -t intel-tbb:12.2 ./intel_tbb_image

# meson-build (final build image)
buildah build -f ./Dockerfile.meson-build -t meson-build:12.2 .