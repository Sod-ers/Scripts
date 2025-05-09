#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣶⣶⣶⣶⣶⣶⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⡿⠟⠛⠋⠉⠉⠉⠉⠙⠛⠻⢿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⢠⣤⣄⠀⠀⣿⣿⠀⠀⣠⣤⡀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣷⣄⣿⣿⣠⣾⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⣾⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣿⣶⣦⣤⣀⣀⣀⣀⣀⣀⣤⣴⣶⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠻⠿⠿⠿⠿⠿⠿⠟⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

printf "\033]0;%s\a" "Backup"
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("MT2" "Desktop" "Nextcloud" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Desktop")
if [ ! -f /mnt/Portable-Backup/status.txt ]; then
echo -e "${RED}USB not detected.${NC}"
sleep 3
else
echo -e "${YELLOW}WARNING! About to begin backup.${NC}" && sleep 3
echo -e "${RED}Press any key to proceed.${NC}"
while true; do
read -rsn1 key
if [[ -n "$key" ]]; then
mkdir /mnt/Portable-Backup/Desktop/
mkdir /mnt/Portable-Backup/Desktop/MT2/
rsync -r --progress --delete ~/Desktop/ /mnt/Portable-Backup/Desktop/MT2/
break
fi
done
echo -e "${GREEN}Backup completed!${NC}" && sleep 3
fi
            break
            ;;
        "MT2")
if [ ! -f /mnt/Portable-Backup/status.txt ]; then
echo -e "${RED}USB not detected.${NC}"
sleep 3
else
echo -e "${YELLOW}WARNING! About to begin backup.${NC}" && sleep 3
echo -e "${RED}Press any key to proceed.${NC}"
while true; do
read -rsn1 key
if [[ -n "$key" ]]; then
mkdir /mnt/Portable-Backup/Linux/
mkdir /mnt/Portable-Backup/Linux/MT2/

mkdir /mnt/Portable-Backup/Linux/MT2/Firewall/
mkdir /mnt/Portable-Backup/Linux/MT2/System-Reports/
touch /mnt/Portable-Backup/Linux/MT2/System-Reports/System-Information.txt
mkdir /mnt/Portable-Backup/Linux/MT2/Radarr/
mkdir /mnt/Portable-Backup/Linux/MT2/Sonarr/
mkdir /mnt/Portable-Backup/Linux/MT2/Homebridge/
touch /mnt/Portable-Backup/Linux/MT2/crontabs.txt
mkdir /mnt/Portable-Backup/Linux/MT2/Tabliss/

# Whisker Menu programs
mkdir /mnt/Portable-Backup/Linux/MT2/Whisker-Menu/
rsync -r --progress --delete ~/.local/share/applications /mnt/Portable-Backup/Linux/MT2/Whisker-Menu/

# Desktop
# mkdir /mnt/Portable-Backup/Desktop/
# mkdir /mnt/Portable-Backup/Desktop/MT2/
# rsync -r --progress --delete ~/Desktop/ /mnt/Portable-Backup/Desktop/MT2/

# PKG list
mkdir /mnt/Portable-Backup/Linux/MT2/Packages/
touch /mnt/Portable-Backup/Linux/MT2/Packages/Snap.txt
touch /mnt/Portable-Backup/Linux/MT2/Packages/Flatpak.txt
rsync -r --progress ~/Documents/Backups /mnt/Portable-Backup/Linux/MT2/Packages/
snap list > /mnt/Portable-Backup/Linux/MT2/Packages/Snap.txt
flatpak list > /mnt/Portable-Backup/Linux/MT2/Packages/Flatpak.txt

# Disk Names / Status
mkdir /mnt/Portable-Backup/Linux/MT2/System-Reports/
mkdir /tmp/System-Stats-MT2/
touch /tmp/System-Stats-MT2/disks.txt
touch /mnt/Portable-Backup/Linux/MT2/System-Reports/disks.txt
[ -f "/" ] || 2> /dev/null df -H / --output=source,pcent,used,avail > /tmp/System-Stats-MT2/disks.txt
sed -i 's/Filesystem/MT2:      /g' /tmp/System-Stats-MT2/disks.txt
[ -f "/dev/sda4" ] || 2> /dev/null df -H /dev/sda4 --output=source,pcent,used,avail >> /tmp/System-Stats-MT2/disks.txt
sed -i 's/Filesystem/Mint2:     /g' /tmp/System-Stats-MT2/disks.txt
disks=$(cat /tmp/System-Stats-MT2/disks.txt)
echo "Disk Usage:
$disks" > /mnt/Portable-Backup/Linux/MT2/System-Reports/disks.txt

# Timestamp
touch /mnt/Portable-Backup/Linux/MT2/timestamp.txt
date "+%I:%M:%S %p  %D" > /mnt/Portable-Backup/Linux/MT2/timestamp.txt

break
fi
done
echo -e "${GREEN}Backup completed!${NC}" && sleep 3
fi
            break
            ;;
        "Nextcloud")
sudo /snap/bin/nextcloud.export
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
