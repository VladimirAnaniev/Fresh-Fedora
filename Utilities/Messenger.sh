#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN} Adding the repository ${NC}"
sudo wget https://bintray.com/aluxian/rpm/rpm -O /etc/yum.repos.d/bintray-aluxian-rpm.repo

echo -e "${GREEN} Installing Messenger ${NC}"
sudo dnf install messengerfordesktop.x86_64
