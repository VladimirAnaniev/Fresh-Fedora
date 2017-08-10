#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing WebStorm ${NC}"
mkdir temp && cd temp
wget https://download.jetbrains.com/webstorm/WebStorm-2017.2.1.tar.gz
tar -xvzf WebStorm-2017.2.1.tar.gz
sudo mv */ /opt/WebStorm

echo -e "${GREEN}Cleaning Up ${NC}"
cd .. && rm -rf temp

echo -e "${GREEN}Creating Shortcut ${NC}"
sudo echo "[Desktop Entry]
Version=1.0
Type=Application
Name=WebStorm
Icon=/opt/WebStorm/bin/webstorm.svg
Exec="/opt/WebStorm/bin/webstorm.sh" %f
Comment=The smartest JavaScript IDE
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-webstorm" | sudo tee ~/.local/share/applications/webstorm.desktop
