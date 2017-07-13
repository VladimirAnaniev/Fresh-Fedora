#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Downloading Nylas Mail ${NC}"
mkdir temp && cd ./temp
wget -O nylas-mail.rpm https://edgehill.nylas.com/download?platform=linux-rpm

echo -e "${GREEN} Installing Nylas Mail ${NC}"
sudo rpm -i nylas-mail.rpm

echo -e "${GREEN} Cleaning up ${NC}"
cd .. && rm -rf temp
