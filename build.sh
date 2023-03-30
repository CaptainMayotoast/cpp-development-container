#!/usr/bin/env bash

# enter /build within the container
cd /build

if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` [debug|release|debugsan|coverage|clean|release-clean|debug-clean|debugsan-clean|coverage-clean]"
  exit 0
fi

# check if the target folder exists, if it does, don't recreate
if [ ! -d "$1" ] && [ $1 == "debug" ]; then
    meson setup -Db_staticpic=true -Dprefer_static=true --buildtype=debug "$1"
elif [ ! -d "$1" ] && [ $1 == "release" ]; then
    meson setup -Db_staticpic=true -Dprefer_static=true -Db_ndebug=true -Db_lto=true --buildtype=release "$1"
elif [ ! -d "$1" ] && [ $1 == "debugsan" ]; then
    meson setup -Db_staticpic=true -Dprefer_static=true -Db_sanitize=address,undefined --buildtype=debug "$1"
elif [ ! -d "$1" ] && [ $1 == "coverage" ]; then
    meson setup -Db_staticpic=true -Dprefer_static=true -Db_coverage=true --buildtype=release "$1"
fi

# invoke Ninja
# Ninja replaces make here
# yay :100:
if [ $1 == "clean" ]; then
    ninja -C debugsan clean
    ninja -C release clean
    ninja -C debug clean
    ninja -C coverage clean
elif [ $1 == "debugsan-clean" ]; then
    ninja -C debugsan clean
elif [ $1 == "release-clean" ]; then
    ninja -C release clean
elif [ $1 == "debug-clean" ]; then
    ninja -C debug clean
elif [ $1 == "coverage-clean" ]; then
    ninja -C coverage clean
else
    ninja -C "$PWD/$1"
fi