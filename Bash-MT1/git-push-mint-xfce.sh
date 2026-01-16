#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

pkill nextcloud > /dev/null 2>&1&
rm ~/Nextcloud/GitHub/mint-xfce/mint-xfce/nohup.out

echo -e "${RED}git-remove-private.sh${NC}"
~/Scripts/git-remove-private.sh

cd ~/Nextcloud/GitHub/mint-xfce/mint-xfce/
echo -e "${RED}git checkout main${NC}"
git checkout main
sleep 1
# echo -e "${RED}git pull${NC}"
# git pull
# sleep 1
echo -e "${RED}git merge main${NC}"
git merge main
sleep 1
git add .
read -p "$(echo -e ${RED}"Enter commit message: "${NC})" MSG
git commit -m "$MSG"
sleep 1
echo -e "${RED}git push origin main${NC}"
git push origin main
notify-send -i ~/.icons/GitHub-Symbolic-16.svg "GitHub" "mint-xfce updated."
echo -e "${GREEN}mint-xfce updated.${NC}" && sleep 1

nohup "/usr/bin/nextcloud" --background & sleep 1 && exit
