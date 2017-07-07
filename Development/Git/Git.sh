#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing Git ${NC}"
sudo dnf -y install git

echo -e "${GREEN} Cinfiguration ${NC}"

# TODO: set user and email
git config --global user.name "VladimirAnaniev"
git config --global user.email "vladeto97@gmail.com"
