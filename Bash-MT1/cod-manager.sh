#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

clear

printf "\033]0;%s\a" "COD Manager"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Backup Configs" "Import Configs" "Skip Intros and Cutscenes" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Backup Configs")
cd "/home/soders/Backups/Misc/Call of Duty/Archive/"
zip -r "configs-$(date +"%Y-%m-%d-%s").tar.gz" "/home/soders/Backups/Misc/Call of Duty/"
# Call of Duty: Black Ops 1  T5
mkdir "/home/soders/Backups/Misc/Call of Duty/"
mkdir "/home/soders/Backups/Misc/Call of Duty/Archive/"
mkdir "/home/soders/Backups/Misc/Call of Duty/Black Ops 1"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t5/players/config.cfg" "/home/soders/Backups/Misc/Call of Duty/Black Ops 1/"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t5/players/zmleaderboards" "/home/soders/Backups/Misc/Call of Duty/Black Ops 1/"

# Call of Duty: Black Ops 2 - Zombies  T6
mkdir "/home/soders/Backups/Misc/Call of Duty/"
mkdir "/home/soders/Backups/Misc/Call of Duty/Archive/"
mkdir "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/"
mkdir "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/steam/"
rsync -r --progress "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty Black Ops II/players" "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/steam"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/bindings_zm.bdg" "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/hardware_zm.chp" "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/plutonium_zm.cfg" "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/user_common.cgp" "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/user_zm.cgp" "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/zmleaderboards" "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/"

# Call of Duty: World at War  T4
mkdir "/home/soders/Backups/Misc/Call of Duty/"
mkdir "/home/soders/Backups/Misc/Call of Duty/Archive/"
mkdir "/home/soders/Backups/Misc/Call of Duty/World at War"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/config.cfg" "/home/soders/Backups/Misc/Call of Duty/World at War/"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/zmleaderboards" "/home/soders/Backups/Misc/Call of Duty/World at War/"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/mpdata" "/home/soders/Backups/Misc/Call of Duty/World at War/"
rsync --progress "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/mpdatabk0000" "/home/soders/Backups/Misc/Call of Duty/World at War/"
            break
            ;;
        "Import Configs")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("ALL" "Black Ops 1" "Black Ops 2 Zombies" "World at War" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "ALL")
            echo -e "${YELLOW}WARNING! About to overwrite Black Ops 1, Black Ops 2, and World at War files..${NC}" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 1/config.cfg" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t5/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 1/zmleaderboards" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t5/players/"

cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/bindings_zm.bdg" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/hardware_zm.chp" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/plutonium_zm.cfg" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/user_common.cgp" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/user_zm.cgp" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/zmleaderboards" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"

cp "/home/soders/Backups/Misc/Call of Duty/World at War/config.cfg" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/"
cp "/home/soders/Backups/Misc/Call of Duty/World at War/zmleaderboards" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/"
cp "/home/soders/Backups/Misc/Call of Duty/World at War/mpdata" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/"
cp "/home/soders/Backups/Misc/Call of Duty/World at War/mpdatabk0000" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/"
            echo -e "${GREEN}Overwrite complete.${NC}" && sleep 2
            break
            fi
            done
            break
            ;;
        "Black Ops 1")
            echo -e "${YELLOW}WARNING! About to overwrite Black Ops 1 files..${NC}" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 1/config.cfg" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t5/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 1/zmleaderboards" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t5/players/"
            echo -e "${GREEN}Overwrite complete.${NC}" && sleep 2
            break
            fi
            done
            break
            ;;
        "Black Ops 2 Zombies")
            echo -e "${YELLOW}WARNING! About to overwrite Black Ops 2 files..${NC}" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/bindings_zm.bdg" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/hardware_zm.chp" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/plutonium_zm.cfg" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/user_common.cgp" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/user_zm.cgp" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
cp "/home/soders/Backups/Misc/Call of Duty/Black Ops 2 Zombies/zmleaderboards" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/AppData/Local/Plutonium/storage/t6/players/"
            echo -e "${GREEN}Overwrite complete.${NC}" && sleep 2
            break
            fi
            done
            break
            ;;
        "World at War")
            echo -e "${YELLOW}WARNING! About to overwrite World at War files..${NC}" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
cp "/home/soders/Backups/Misc/Call of Duty/World at War/config.cfg" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/"
cp "/home/soders/Backups/Misc/Call of Duty/World at War/zmleaderboards" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/"
cp "/home/soders/Backups/Misc/Call of Duty/World at War/mpdata" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/"
cp "/home/soders/Backups/Misc/Call of Duty/World at War/mpdatabk0000" "/home/soders/.local/share/wineprefixes/cod/drive_c/users/soders/Favorites/t4-cfg-proxy/"
            echo -e "${GREEN}Overwrite complete.${NC}" && sleep 2
            break
            fi
            done
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Skip Intros and Cutscenes")
# Call of Duty: Black Ops 1  T5
rm "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty Black Ops/main/video/default.bik"
rm "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty Black Ops/main/video/treyarch.bik"

# Call of Duty: Black Ops 2 - Zombies  T6
rm "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty Black Ops II/video/default.bik"
rm "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty Black Ops II/video/default.webm"
rm "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty Black Ops II/video/dolby.webm"
rm "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty Black Ops II/video/frontend_load.webm"
rm "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty Black Ops II/video/intro.webm"
rm "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty Black Ops II/video/treyarch.webm"

# Call of Duty: World at War  T4
rm "/home/soders/.steam/debian-installation/steamapps/common/Call of Duty World at War/cod.bmp"
echo -e "${GREEN}Intros and cutscenes removed.${NC}" && sleep 2
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
