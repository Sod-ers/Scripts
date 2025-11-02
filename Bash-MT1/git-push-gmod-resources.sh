#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

pkill nextcloud > /dev/null 2>&1&
rm ~/Nextcloud/GitHub/GMod-Resources/GMod-Resources/nohup.out

echo -e "${RED}rsync${NC}"
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/aliases.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-aliases.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-chat.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-controls.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-unbound.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/settings.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/settings.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/sensitivity.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/sensitivity.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-aliases.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-chat.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-controls.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-unbound.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/tier.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/tier.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/volume.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/volume.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/mute.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/mute.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-bhop-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-bhop-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-easy-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-easy-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-public-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-public-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-climb-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-climb-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-easy-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-easy-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-hard-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-hard-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/chat.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/server.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/server.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/test-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/test-autoexec.cfg
rsync /home/soders/Configs/GMod/BB/mvp.cfg /media/soders/2TBNTFS/Documents/Configs/GMod/BB/mvp.cfg
mkdir /media/soders/2TBNTFS/Documents/Configs/GMod/BB/
rsync -r --delete /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/data/bb_servers/outfits /media/soders/2TBNTFS/Documents/Configs/GMod/BB/
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/sprays.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/test-cosmetic.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/test-cosmetic.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/test-map.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/test-map.cfg


echo -e "${RED}git-remove-private.sh${NC}"
~/Scripts/git-remove-private.sh

cd ~/Nextcloud/GitHub/GMod-Resources/GMod-Resources/
echo -e "${RED}git checkout main${NC}"
git checkout main
sleep 1
echo -e "${RED}git pull${NC}"
git pull
sleep 1
echo -e "${RED}git merge main${NC}"
git merge main
sleep 1
git add .
read -p "$(echo -e ${YELLOW}"Enter commit message: "${NC})" MSG
git commit -m "$MSG"
sleep 1
echo -e "${RED}git push origin main${NC}"
git push origin main
notify-send -i ~/.icons/GitHub-Symbolic-16.svg "GitHub" "GMod Resources updated."
echo -e "${GREEN}Gmod Resources updated.${NC}" && sleep 1

nohup "/usr/bin/nextcloud" --background & sleep 1 && exit
