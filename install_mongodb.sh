#!/bin/bash
MONGODB_VER=2.6.4

test -d mongodb-osx-x86_64_$MONGODB_VER || curl -O http://downloads.mongodb.org/osx/mongodb-osx-x86_64-$MONGODB_VER.tgz | tar xz

mkdir -p mongodb
cp -R -n mongodb-osx-x86_$MONGODB_VER/ mongodb_$MONGODB_VER

echo 'export PATH=mongodb_$MONGODB_VER/bin:$PATH'

mkdir -p /data/db && chown mongodb /data/db



