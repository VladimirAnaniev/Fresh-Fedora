#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN} Adding the repository ${NC}"
# Add my repository to your repos list (skip if you've done this already)
sudo wget https://bintray.com/aluxian/rpm/rpm -O /etc/yum.repos.d/bintray-aluxian-rpm.repo

echo -e "${GREEN} Installing Messenger ${NC}"
# Install Messenger for Desktop
sudo dnf install messengerfordesktop.x86_64   # for 64-bit distros
