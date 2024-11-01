#!/bin/bash

set -e

CCACHE_VERSION=4.10.2

# https://github.com/ccache/ccache/blob/master/doc/INSTALL.md#installation

wget -q https://github.com/ccache/ccache/releases/download/v$CCACHE_VERSION/ccache-$CCACHE_VERSION-linux-x86_64.tar.xz

tar -xvf ./ccache-$CCACHE_VERSION-linux-x86_64.tar.xz

# https://mesonbuild.com/Feature-autodetection.html#ccache
# this should be enough for Meson to pick up ccache
cp ./ccache-$CCACHE_VERSION-linux-x86_64/ccache /usr/local/bin/
