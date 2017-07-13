#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing Create React App ${NC}"
npm install -g create-react-app

echo -e "${GREEN}Installing Standard ${NC}"
npm install -g standard

echo -e "${GREEN}Installing Yarn ${NC}"
npm install -g yarn
