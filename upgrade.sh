#!/bin/bash
cd init_termux
git pull

cd ~

cd ani-cli
git pull
cp -i ani-cli $PREFIX/bin/ani-cli

cd dra-cla
git pull
cp -i dra-cla $PREFIX/bin/dra-cla