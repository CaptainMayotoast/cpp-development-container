#!/bin/bash

set -e

# https://github.com/boostorg/boost/releases/

BOOST_VERSION=1.87.0

echo "downloading boost version ${BOOST_VERSION}"

git clone --recursive --depth 1 -j 16 https://github.com/boostorg/boost.git
cd boost
git checkout master
./bootstrap.sh --prefix=/opt/boost
echo "installing boost (static libraries)"
./b2 link=static
./b2 install
echo "installing boost headers"
./b2 headers
