#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Downloading the Compass package ${NC}"
wget https://downloads.mongodb.com/compass/mongodb-compass-1.7.1.x86_64.rpm

echo -e "${GREEN}Installing Compass ${NC}"
sudo dnf install mongodb-compass-1.7.1.x86_64.rpm

echo -e "${GREEN}Cleaning Up ${NC}"
rm mongodb-compass-1.7.1.x86_64.rpm

