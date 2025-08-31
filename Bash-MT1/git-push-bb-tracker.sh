#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

~/Scripts/git-remove-private.sh

cd ~/Nextcloud/GitHub/BB-Tracker/BB-Tracker/
git checkout main
sleep 1
git pull
sleep 1
git merge main
sleep 1
git add .
read -p "$(echo -e ${YELLOW}"Enter commit message: "${NC})" MSG
git commit -m "$MSG"
sleep 1
git push origin main
notify-send -i ~/.icons/GitHub-Symbolic.png "GitHub" "BB Tracker updated."
echo -e "${GREEN}Programs updated.${NC}" && sleep 2
