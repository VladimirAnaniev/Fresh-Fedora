#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Setting up the repositroey for MongoDb ${NC}"
sudo echo "[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc" | sudo tee /etc/yum.repos.d/mongodb-org-3.4.repo

echo -e "${GREEN}Installing MongoDb ${NC}"
sudo dnf install -y mongodb mongodb-server

echo -e "${GREEN}Starting MongoDb ${NC}"
sudo service mongod start
sudo chkconfig mongod on
