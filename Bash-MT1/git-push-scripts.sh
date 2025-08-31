#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

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

~/Scripts/git-remove-private.sh

cd ~/Nextcloud/GitHub/Scripts/Scripts/
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
notify-send -i ~/.icons/GitHub-Symbolic.png "GitHub" "Scripts updated."
echo -e "${GREEN}Scripts updated.${NC}" && sleep 2
