#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing MongoDb ${NC}"
sudo dnf install -y mongodb mongodb-server

echo -e "${GREEN}Starting MongoDb ${NC}"
sudo service mongod start
