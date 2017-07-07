#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing NVM ${NC}"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

echo -e "${GREEN}Installing Node ${NC}"
nvm install node
