#!/bin/bash
NODE_VER=0.10.32

rm -rf tmp/node
mkdir -p tmp/node
cd tmp/node
test -d node-v$NODE_VER || curl http://nodejs.org/dist/v$NODE_VER/node-v$NODE_VER.tar.gz | tar xz
cd node-v$NODE_VER

test -x out/Release/node || (./configure; make)
make install




