#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Downloading Hyper ${NC}"
mkdir temp && cd ./temp
wget -O hyper.rpm https://hyper-updates.now.sh/download/linux_rpm 

echo -e "${GREEN} Installing Hyper ${NC}"
sudo rpm -i hyper.rpm

echo -e "${GREEN} Cleaning up ${NC}"
cd .. && rm -rf temp

read -p  $"${GREEN} Do you want to set ./hyper.js as your configuration file? [y/N] " -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo -e "${GREEN} Copying ./.hyper.js to ~/.hyper.js ${NC}"
    cp -f ./.hyper.js ~/.hyper.js
fi

echo -e "${GREEN} All Done! ${NC}"
