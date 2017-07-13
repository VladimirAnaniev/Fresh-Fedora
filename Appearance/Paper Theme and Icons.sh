#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing Paper Theme and Icons ${NC}"
su -c "dnf -y copr enable user501254/Paper && dnf -y install paper-gtk-theme paper-icon-theme"
