#!/bin/bash
VER=0.10.32

rm -rf tmp
mkdir -p tmp
cd tmp
test -d node-v$VER || curl http://nodejs.org/dist/v$VER/node-v$VER.tar.gz | tar xz
cd node-v$VER

test -x out/Release/node || (./configure; make)
make install




