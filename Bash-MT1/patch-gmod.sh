#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

printf "\033]0;%s\a" "Patch GMod"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Full Patch" "CEF Only" "Custom Files Only" "Default Menu" "Delete Maps" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Full Patch")
~/.local/bin/gmodpatchtool
cp -r /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/Dark-Theme/Linux/garrysmod/addons/dark-theme /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/addons
rm -r /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp -r /home/soders/Games/GMod/backgrounds /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
echo -e "${GREEN}Patched${NC}"
sleep 3
            break
            ;;
        "CEF Only")
~/.local/bin/gmodpatchtool
echo -e "${GREEN}Patched${NC}"
sleep 3
            break
            ;;
        "Custom Files Only")
cp -r /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/Dark-Theme/Linux/garrysmod/addons/dark-theme /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/addons
rm -r /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp -r /home/soders/Games/GMod/backgrounds /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
echo -e "${GREEN}Patched${NC}"
sleep 3
            break
            ;;
        "Default Menu")
rm /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/addons/dark-theme/html/template/main.html
echo -e "${GREEN}Patched${NC}"
sleep 3
            break
            ;;
        "Delete Maps")
rm -r /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/download/maps
echo -e "${YELLOW}Maps folder removed.. Copying maps... this may take a while.${NC}"
cp -r /home/soders/Games/GMod/maps /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/download/maps
echo -e "${GREEN}Maps copied.${NC}"
sleep 3
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
