#!/bin/bash
cd ~

echo "alias upgrade='~/init_termux/upgrade.sh'" > .profile

git clone https://github.com/CoolnsX/dra-cla
git clone https://github.com/pystardust/ani-cli
git clone https://github.com/justchokingaround/jerry
# git clone https://github.com/justchokingaround/lobster
git clone https://github.com/z369369/init_termux

folders=(
	ani-cli 
	dra-cla 
	jerry 
    init_termux
)

RED='\033[1;33m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color

# Loop through the folders
for folder in "${folders[@]}"
do
	printf "${RED}GIT refresh${NC} : ${GREEN}~/$folder${NC}\n"
	cd ~/$folder
	git reset --hard HEAD
	git pull
	echo ""
done

chmod +x ~/init_termux/*

cp -f ~/ani-cli/ani-cli $PREFIX/bin/ani-cli
cp -f ~/dra-cla/dra-cla $PREFIX/bin/dra-cla
cp -f ~/jerry/jerry.sh $PREFIX/bin/jerry
# cp -f ~/lobster/lobster.sh $PREFIX/bin/lobster

# rm -rf $PREFIX/bin/jerry
# rm -rf $PREFIX/bin/lobster
# rm -rf ~/lobster
# rm -rf ~/jerry