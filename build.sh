#!/usr/bin/env bash

# enter /build within the container
cd /build

if [ ! -d "/home/$(whoami)/.local/bin" ]; then
    pipx ensurepath && \ 
    pipx install ninja==1.11.1 && \
    pipx install meson==1.1.1 && \
    pipx install gcovr==5.2
fi

if [ ! -f "/usr/local/bin/meson" ]; then
    cp /home/$(whoami)/.local/bin/meson /usr/local/bin
fi

if [ ! -f "/usr/local/bin/ninja" ]; then
    cp /home/$(whoami)/.local/bin/ninja /usr/local/bin
fi

if [ "$1" == "" ]; then
    echo "Specify arguments, please"
    exit 1
fi

if [ "$1" == "-h" ]; then
    echo "Usage: `basename $0` [debug|release|debugsan|coverage|clean|release-clean|debug-clean|debugsan-clean|coverage-clean]"
    exit 0
fi

# check if the target folder exists, if it does, don't recreate
if [ ! -d "$1" ] && [ $1 == "debug" ]; then
    /home/$(whoami)/.local/bin/meson setup -Db_staticpic=true -Dprefer_static=true --buildtype=debug "$1"
elif [ ! -d "$1" ] && [ $1 == "release" ]; then
    /home/$(whoami)/.local/bin/meson setup -Db_staticpic=true -Dprefer_static=true -Db_ndebug=true -Db_lto=true --buildtype=release "$1"
elif [ ! -d "$1" ] && [ $1 == "debugsan" ]; then
    /home/$(whoami)/.local/bin/meson setup -Db_staticpic=true -Dprefer_static=true -Db_sanitize=address,undefined --buildtype=debug "$1"
elif [ ! -d "$1" ] && [ $1 == "coverage" ]; then
    /home/$(whoami)/.local/bin/meson setup -Db_staticpic=true -Dprefer_static=true -Db_coverage=true --buildtype=release "$1"
fi

# invoke Ninja
# Ninja replaces make here
# yay :100:
if [ $1 == "clean" ]; then
    /home/$(whoami)/.local/bin/ninja -C debugsan clean
    /home/$(whoami)/.local/bin/ninja -C release clean
    /home/$(whoami)/.local/bin/ninja -C debug clean
    /home/$(whoami)/.local/bin/ninja -C coverage clean
elif [ $1 == "debugsan-clean" ]; then
    /home/$(whoami)/.local/bin/ninja -C debugsan clean
elif [ $1 == "release-clean" ]; then
    /home/$(whoami)/.local/bin/ninja -C release clean
elif [ $1 == "debug-clean" ]; then
    /home/$(whoami)/.local/bin/ninja -C debug clean
elif [ $1 == "coverage-clean" ]; then
    /home/$(whoami)/.local/bin/ninja -C coverage clean
else
    /home/$(whoami)/.local/bin/ninja -C "$PWD/$1"
fi