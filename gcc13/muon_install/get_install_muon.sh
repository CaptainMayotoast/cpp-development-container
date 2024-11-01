#!/bin/bash

set -e

git clone --depth 1 https://github.com/muon-build/muon.git
cd muon

./bootstrap.sh build

build/muon setup build
build/muon -C build samu
build/muon -C build test
build/muon -C build install