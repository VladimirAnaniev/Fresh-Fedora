#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Downloading Chrome ${NC}"
mkdir temp && cd ./temp
wget -O chrome.rpm https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

echo -e "${GREEN} Installing Chrome ${NC}"
sudo rpm -i chrome.rpm

echo -e "${GREEN} Cleaning up ${NC}"
cd .. && rm -rf temp

echo -e "${GREEN} All Done! ${NC}"
