#!/bin/sh
VER=0.10.32
cd tmp/node/node-v$VER
./configure --prefix=$HOME/local/node
make uninstall

BIN=/Users/$USER/local/bin
echo $BIN
rm -rf $BIN/npm
rm -rf $BIN/node
rm -rf /Users/$USER/local/share/man/man1/node.1
rm -rf /Users/$USER/local/lib/dtrace/node.d
rm -rf /Users/$USER/.npm

GLOBAL=/usr/local
echo $GLOBAL
rm -rf $GLOBAL/bin/npm
rm -rf $GLOBAL/bin/node
rm -rf $GLOBAL/share/man/man1/node.1
rm -rf $GLOBAL/lib/dtrace/node.d
