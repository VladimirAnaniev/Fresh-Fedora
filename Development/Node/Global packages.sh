#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing Global npm packages ${NC}"
npm install -g yarn create-react-app standard @angular/cli @angular/cdk typescript

