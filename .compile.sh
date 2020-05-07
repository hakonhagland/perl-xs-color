#! /bin/bash

cd c++-lib
./.compile.sh
cd ..

#make clean
#export PERL_CXX=g++
perl Makefile.PL
make
#make install
