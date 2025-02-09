#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

printf "\033]0;%s\a" "Patch GMod"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Full Patch" "CEF Only" "Custom Files Only" "Default Menu" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Full Patch")
/home/soders/.local/bin/GModCEFCodecFix-Linux
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/html/template/main.html /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/html/template/main.html
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/materials/console/background01.vtf /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/console/background01.vtf
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/materials/console/background01_widescreen.vtf /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/console/background01_widescreen.vtf
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/SourceScheme.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/SourceScheme.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ClientScheme.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ClientScheme.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ChatScheme.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ChatScheme.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ui/BaseChat.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ui/BaseChat.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ui/TextWindow.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ui/TextWindow.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/fonts/csdbig.ttf /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/fonts/
rm -r /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp -r /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/backgrounds /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
echo -e "${GREEN}Patched${NC}"
sleep 3
            break
            ;;
        "CEF Only")
/home/soders/.local/bin/GModCEFCodecFix-Linux
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
echo -e "${GREEN}Patched${NC}"
sleep 3
            break
            ;;
        "Custom Files Only")
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/html/template/main.html /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/html/template/main.html
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/materials/console/background01.vtf /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/console/background01.vtf
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/materials/console/background01_widescreen.vtf /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/console/background01_widescreen.vtf
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/SourceScheme.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/SourceScheme.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ClientScheme.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ClientScheme.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ChatScheme.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ChatScheme.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ui/BaseChat.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ui/BaseChat.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ui/TextWindow.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ui/TextWindow.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/fonts/csdbig.ttf /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/fonts/
rm -r /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp -r /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/backgrounds /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
echo -e "${GREEN}Patched${NC}"
sleep 3
            break
            ;;
        "Default Menu")
cp /home/soders/Games/GMod-Regular-Menu/main.html /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/html/template/main.html
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/materials/console/background01.vtf /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/console/background01.vtf
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/materials/console/background01_widescreen.vtf /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/console/background01_widescreen.vtf
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/SourceScheme.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/SourceScheme.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ClientScheme.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ClientScheme.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ChatScheme.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ChatScheme.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ui/BaseChat.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ui/BaseChat.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/ui/TextWindow.res /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/ui/TextWindow.res
cp /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/resource/fonts/csdbig.ttf /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/resource/fonts/
rm -r /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp -r /home/soders/Games/GMod-Dark-Theme/GarrysMod/garrysmod/backgrounds /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/backgrounds
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
echo -e "${GREEN}Patched${NC}"
sleep 3
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
