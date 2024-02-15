#!/bin/bash

set -e

# https://github.com/boostorg/boost/releases/tag/
# https://github.com/grpc/grpc/blob/master/BUILDING.md#build-from-source

BOOST_VERSION=1.84.0

echo "downloading boost"

wget -q https://github.com/boostorg/boost/releases/download/boost-$BOOST_VERSION/boost-$BOOST_VERSION.tar.gz
tar -xzvf boost-$BOOST_VERSION.tar.gz
cd boost-$BOOST_VERSION
./bootstrap.sh --prefix=/opt/boost
echo "installing boost"
./b2 link=static
./b2 install
echo "installing boost headers"
./b2 headers