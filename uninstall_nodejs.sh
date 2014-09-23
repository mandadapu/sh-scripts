#!/bin/sh
VER=0.10.32
cd tmp/node-v$VER
./configure --prefix=$HOME/local/node
make uninstall

BIN=/Users/$USER/local/bin/
echo $BIN
rm -rf $BIN/npm
rm -rf $BIN/node
rm -rf /Users/$USER/local/share/man/man1/node.1
rm -rf /Users/$USER/local/lib/dtrace/node.d
rm -rf /Users/$USER/.npm
