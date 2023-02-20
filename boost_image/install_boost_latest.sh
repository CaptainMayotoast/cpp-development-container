#!/bin/bash

BOOST_VERSION=1.81.0

echo "downloading boost"

wget -q https://github.com/boostorg/boost/releases/download/boost-$BOOST_VERSION/boost-$BOOST_VERSION.tar.gz
tar -xzvf boost-$BOOST_VERSION.tar.gz
cd boost-$BOOST_VERSION
./bootstrap.sh --prefix=/opt/boost
echo "installing boost"
./b2 install
echo "installing boost headers"
./b2 headers