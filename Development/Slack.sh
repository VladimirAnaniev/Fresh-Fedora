#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Downloading Slack ${NC}"
sudo dnf install libappindicator
mkdir temp && cd ./temp
wget -O slack.rpm https://downloads.slack-edge.com/linux_releases/slack-2.6.3-0.1.fc21.x86_64.rpm

echo -e "${GREEN} Installing Slack ${NC}"
sudo rpm -i slack.rpm

echo -e "${GREEN} Cleaning up ${NC}"
cd .. && rm -rf temp
