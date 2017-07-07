#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Downloading Skype ${NC}"
mkdir temp && cd ./temp
wget -O skype.rpm https://go.skype.com/skypeforlinux-64.rpm

echo -e "${GREEN} Installing Skype ${NC}"
sudo rpm -i skype.rpm

echo -e "${GREEN} Cleaning up ${NC}"
cd .. && rm -rf temp
