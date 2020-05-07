#! /bin/bash

cd c++-lib
./.compile.sh
cd ..

#make clean
perl Makefile.PL
make
