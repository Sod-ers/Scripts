#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

pkill nextcloud > /dev/null 2>&1&
rm ~/Nextcloud/GitHub/Scripts/Scripts/nohup.out

echo -e "${RED}rsync${NC}"
mkdir /tmp/Bash-MT2/
scp -r $MT2:/home/soders/Scripts/* /tmp/Bash-MT2/
rsync -r --delete /tmp/Bash-MT2/ /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT2/
rm -r /tmp/Bash-MT2/

mkdir /tmp/Bash-MT3/
scp -r $MT3:/home/soders/Scripts/* /tmp/Bash-MT3/
rsync -r --delete /tmp/Bash-MT3/ /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT3/
rm -r /tmp/Bash-MT3/

rsync -r /media/soders/2TBNTFS/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Batch/
rsync -r --delete /home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT1/

echo -e "${RED}git-remove-private.sh${NC}"
~/Scripts/git-remove-private.sh

cd ~/Nextcloud/GitHub/Scripts/Scripts/
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
notify-send -i ~/.icons/GitHub-Symbolic-16.svg "GitHub" "Scripts updated."
echo -e "${GREEN}Scripts updated.${NC}" && sleep 1

nohup "/usr/bin/nextcloud" --background & sleep 1 && exit
