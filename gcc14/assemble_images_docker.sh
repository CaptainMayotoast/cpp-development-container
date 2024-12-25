#!/bin/bash
set -e

# boost
docker build -f ./boost_image/Dockerfile.boost -t boost:14.2 ./boost_image

# meson-build (final build image)
docker build -f ./Dockerfile.meson-build -t meson-build:14.2 .
