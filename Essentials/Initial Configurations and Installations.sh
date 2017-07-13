#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Updating System ${NC}"
sudo dnf update

echo -e "${GREEN}Enable TRIM ${NC}"
sudo systemctl enable fstrim.timer

echo -e "${GREEN}Installing RPMFusion ${NC}"
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo -e "${GREEN}Installing Gnome Tweak Tool ${NC}"
sudo dnf install gnome-tweak-tool

echo -e "${GREEN}Installing Linux Standard Base (LSB) Core ${NC}"
sudo dnf install lsb

echo -e "${GREEN}Installing chrome-gnome-shell ${NC}"
sudo dnf copr enable region51/chrome-gnome-shell
sudo dnf install chrome-gnome-shell
