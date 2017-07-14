#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing Git ${NC}"
sudo dnf -y install git

echo -e "${GREEN} Cinfiguration ${NC}"

echo -e "${GREEN} Enter your name: ${NC}"
read userName
git config --global user.name userName

echo -e "${GREEN} Enter your email: ${NC}"
read userEmail
git config --global user.email userEmail

echo -e "${GREEN} All set! ${NC}"