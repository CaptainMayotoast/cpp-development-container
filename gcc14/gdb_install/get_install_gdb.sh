#!/bin/bash

set -e

git clone --depth 1 --branch gdb-15.2-release https://sourceware.org/git/binutils-gdb.git
cd binutils-gdb

./configure
make
make install

