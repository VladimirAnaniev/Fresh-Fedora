#! /bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Downloading MotiSlide repository in your Home directory ${NC}"
cd ~/
git clone https://github.com/danielgospodinow/MotiSlide.git
cd MotiSlide

echo  -e "${GREEN} How often should the wallpapers change (in minutes)? [1-60] ${NC}"
read userinput

while [[ $userinput -lt 1 || $userinput -gt 60 ]]; do
  echo -e "${GREEN} Input outside acceptable range. Enter a number between [1-60] ${NC}"
  read userinput
done

./setSlideshowSchedule.sh $userinput
