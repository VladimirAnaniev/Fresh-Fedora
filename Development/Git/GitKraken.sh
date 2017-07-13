#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing GitKraken ${NC}"
wget https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz
tar -xvzf gitkraken-amd64.tar.gz
sudo rsync -va --delete-after gitkraken/ /opt/GitKraken/

echo -e "${GREEN}Cleaning Up ${NC}"
rm -rf gitkraken-amd64.tar.gz && rm -rf gitkraken/


echo -e "${GREEN}Creating Shortcut ${NC}"
cd /opt/GitKraken
wget -O icon.png http://img.informer.com/icons_mac/png/128/422/422255.png
sudo echo "[Desktop Entry]
Name=GitKraken
Comment=Git Flow
Exec=/opt/GitKraken/gitkraken
Icon=/opt/GitKraken/icon.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Utility;Development;" | sudo tee ~/.local/share/applications/gitkraken.desktop
