#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing CLion ${NC}"
mkdir temp && cd temp
wget https://download.jetbrains.com/cpp/CLion-2017.2.1.tar.gz
tar -xvzf CLion-2017.2.1.tar.gz
sudo mv */ /opt/CLion

echo -e "${GREEN}Cleaning Up ${NC}"
cd .. && rm -rf temp

echo -e "${GREEN}Creating Shortcut ${NC}"
sudo echo "[Desktop Entry]
Version=1.0
Type=Application
Name=CLion
Icon=/opt/CLion/bin/clion.svg
Exec="/opt/CLion/bin/clion.sh" %f
Comment=A smart cross-platform IDE for C and C++
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-clion" | sudo tee ~/.local/share/applications/clion.desktop
