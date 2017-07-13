#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Downloading JetBrains Toolbox ${NC}"
mkdir temp && cd ./temp
wget -O jetbrains-toolbox-1.4.2492.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.4.2492.tar.gz

echo -e "${GREEN} Moving archive and cleaning up ${NC}"
sudo cp jetbrains-toolbox-1.4.2492.tar.gz /opt/
cd .. && rm -rf temp

echo -e "${GREEN} Unzipping ${NC}"
cd /opt/
sudo tar -xvf jetbrains-toolbox-1.4.2492.tar.gz
sudo rm -rf jetbrains-toolbox-1.4.2492.tar.gz

echo -e "${GREEN} Updating permissions and linking ${NC}"
sudo chmod 777 jetbrains-toolbox-1.4.2492/
sudo ln -s /opt/jetbrains-toolbox-1.4.2492/ /usr/bin/jetbrains-toolbox
