#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

pkill nextcloud > /dev/null 2>&1&

echo -e "${RED}rsync${NC}"
# OPEN-FORTRESS
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/volume.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/volume.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/autoexec.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/settings.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/settings.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/mute.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/mute.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/alias.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/alias.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/controls.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/controls.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/unbound.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/unbound.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/colors.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/colors.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/sprays.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/announcers.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/announcers.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/chat.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/chat.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/practice.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/practice.cfg
rsync -r --ignore-existing --delete /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/logos /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/
# HL2DM
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/autoexec.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/autoexec.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/volume.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/volume.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/mute.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/mute.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/settings.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/settings.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/aliases.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/aliases.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/chat.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/chat.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/unbound.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/unbound.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/controls.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/controls.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/sprays.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/sprays.cfg
# CS2
rsync /home/soders/Configs/CS2/autoexec.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/CS2/autoexec.cfg

echo -e "${RED}git-remove-private.sh${NC}"
~/Scripts/git-remove-private.sh

cd ~/Nextcloud/GitHub/Configs/Configs/
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
notify-send -i ~/.icons/GitHub-Symbolic-16.svg "GitHub" "Configs updated."
echo -e "${GREEN}Configs updated.${NC}" && sleep 1

nohup "/usr/bin/nextcloud" --background & sleep 1 && exit
