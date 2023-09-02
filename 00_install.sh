#!/bin/bash
pkg update
pkg upgrade
pkg update
pkg upgrade
pkg install git termux-tools ncurses-utils openssl-tool ffmpeg -y

echo 'am start -n is.xyz.mpv/.MPVActivity "$1"' > $PREFIX/bin/mpv
chmod +x $PREFIX/bin/mpv

cd ~

git clone https://github.com/z369369/init_termux