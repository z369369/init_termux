#!/bin/bash
cd ~/ani-cli
git reset --hard HEAD
git pull
cp -f ani-cli $PREFIX/bin/ani-cli

cd ~/dra-cla
git reset --hard HEAD
git pull
cp -f dra-cla $PREFIX/bin/dra-cla

cd ~/init_termux
git reset --hard HEAD
git pull
chmod +x ~/init_termux/*