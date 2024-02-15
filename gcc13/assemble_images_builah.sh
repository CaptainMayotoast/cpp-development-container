#!/bin/bash
set -e

# boost
buildah build -f ./boost_image/Dockerfile.boost -t boost:13.1 ./boost_image

# cmake
buildah build -f ./cmake_image/Dockerfile.cmake -t cmake:13.1 ./cmake_image

# grpc
buildah build -f ./grpc_image/Dockerfile.grpc -t grpc:13.1 ./grpc_image

# Intel MKL
buildah build -f ./intel_mkl_image/Dockerfile.mkl -t intel-mkl:13.1 ./intel_mkl_image

# Intel TBB
buildah build -f ./intel_tbb_image/Dockerfile.tbb -t intel-tbb:13.1 ./intel_tbb_image

# meson-build (final build image)
buildah build -f ./Dockerfile.meson-build -t meson-build:13.1 .