#!/bin/bash
cd ~

git clone https://github.com/CoolnsX/dra-cla
git clone https://github.com/pystardust/ani-cli
# git clone https://github.com/justchokingaround/jerry
# git clone https://github.com/justchokingaround/lobster
git clone https://github.com/z369369/init_termux

cd ~/ani-cli
git reset --hard HEAD
git pull
cp -f ani-cli $PREFIX/bin/ani-cli

cd ~/dra-cla
git reset --hard HEAD
git pull
cp -f dra-cla $PREFIX/bin/dra-cla

# cd ~/jerry
# git reset --hard HEAD
# git pull
# cp -f jerry.sh $PREFIX/bin/jerry

# cd ~/lobster
# git reset --hard HEAD
# git pull
# cp -f lobster.sh $PREFIX/bin/lobster

# rm -rf $PREFIX/bin/jerry
# rm -rf $PREFIX/bin/lobster
# rm -rf ~/lobster
# rm -rf ~/jerry


cd ~/init_termux
git reset --hard HEAD
git pull
chmod +x ~/init_termux/*