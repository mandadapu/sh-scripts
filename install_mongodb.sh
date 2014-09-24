#!/bin/bash
MONGODB_VER=2.6.4

rm -rf tmp/mongo
mkdir -p tmp/mongo
cd tmp/mongo

test -d mongodb-osx-x86_64_$MONGODB_VER || curl -O http://downloads.mongodb.org/osx/mongodb-osx-x86_64-$MONGODB_VER.tgz
tar -zxvf mongodb-osx-x86_64-$MONGODB_VER.tgz
chmod 777 mongodb-osx-x86_64-2.6.4.tgz
mv mongodb-osx-x86_64-$MONGODB_VER/ mongodb_$MONGODB_VER
mkdir -p /data/db
echo 'export PATH=mongodb_$MONGODB_VER/bin:$PATH'

#&& chown mongodb /data/db



