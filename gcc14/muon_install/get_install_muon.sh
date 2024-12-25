#!/bin/bash

set -e

git clone --depth 1 https://github.com/muon-build/muon.git
cd muon

./bootstrap.sh build

build/muon-bootstrap setup build
build/muon-bootstrap -C build samu
build/muon-bootstrap -C build test
build/muon-bootstrap -C build install
