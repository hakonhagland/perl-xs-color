#! /bin/bash

build_dir=build
curdir="$PWD"
cmake -DCMAKE_INSTALL_PREFIX="$curdir/install" -S . -B "$build_dir"
cmake --build "$build_dir"
cmake --install "$build_dir"

