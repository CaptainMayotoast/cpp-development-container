#!/bin/bash
set -e

# boost
buildah build -f ./boost_image/Dockerfile.boost -t boost:13.3 ./boost_image

# meson-build (final build image)
buildah build -f ./Dockerfile.meson-build -t meson-build:13.3 .