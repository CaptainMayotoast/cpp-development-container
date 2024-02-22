#!/bin/bash
set -e

# boost
docker build -f ./boost_image/Dockerfile.boost -t boost:13.1 ./boost_image

# cmake
docker build -f ./cmake_image/Dockerfile.cmake -t cmake:13.1 ./cmake_image

# Intel MKL
docker build -f ./intel_mkl_image/Dockerfile.mkl -t intel-mkl:13.1 ./intel_mkl_image

# Intel TBB
docker build -f ./intel_tbb_image/Dockerfile.tbb -t intel-tbb:13.1 ./intel_tbb_image

# meson-build (final build image)
docker build -f ./Dockerfile.meson-build -t meson-build:13.1 .