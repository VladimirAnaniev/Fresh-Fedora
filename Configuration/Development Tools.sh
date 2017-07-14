#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing Development Tools ${NC}"
sudo dnf group install -y "Development Tools" "C Development Tools and Libraries"
sudo dnf install -y kernel-devel
