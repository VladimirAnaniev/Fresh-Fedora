#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing IntelliJ ${NC}"
mkdir temp && cd temp
wget https://download.jetbrains.com/idea/ideaIU-2017.2.1.tar.gz
tar -xvzf ideaIU-2017.2.1.tar.gz
sudo mv */ /opt/IntelliJ

echo -e "${GREEN}Cleaning Up ${NC}"
cd .. && rm -rf temp

echo -e "${GREEN}Creating Shortcut ${NC}"
sudo echo "[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA Ultimate
Icon=/opt/IntelliJ/bin/idea.png
Exec="/opt/IntelliJ/bin/idea.sh" %f
Comment=Capable and ergonomic Java IDE
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-idea" | sudo tee ~/.local/share/applications/intellij.desktop
