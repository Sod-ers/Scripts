#!/bin/bash

clear

source /home/soders/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'
printf "\033]0;%s\a" "Splits"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Easy Server" "Hard Server" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Easy Server")
sshpass -p $SSH_PASSWORD ssh $MT2 /home/soders/BB-Tracker/BB-Tracker-Silent.sh > /dev/null 2>&1&
echo -e "${YELLOW}Processing..${NC}"
sleep 3
sshpass -p $SSH_PASSWORD scp -r $MT2:/home/soders/BB-Tracker/Active-Maps.txt /tmp/BB-Active-Maps.txt
clear
grep -w -Ff <(sort /tmp/BB-Active-Maps.txt) <(sort /home/soders/Programs/BB-Tracker/easy-maps.txt) > /tmp/bb-current-map.txt
echo " " >/dev/null
            break
            ;;
        "Hard Server")
sshpass -p $SSH_PASSWORD ssh $MT2 /home/soders/BB-Tracker/BB-Tracker-Silent.sh > /dev/null 2>&1&
echo -e "${YELLOW}Processing..${NC}"
sleep 3
sshpass -p $SSH_PASSWORD scp -r $MT2:/home/soders/BB-Tracker/Active-Maps.txt /tmp/BB-Active-Maps.txt
clear
grep -w -Ff <(sort /tmp/BB-Active-Maps.txt) <(sort /home/soders/Programs/BB-Tracker/hard-maps.txt) > /tmp/bb-current-map.txt
echo " " >/dev/null
            break
            ;;
        "Quit")
            exit
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

splits=$(< /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/data/bb_servers/surf/surf_splits.txt)
time_left_seconds=$(< /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/data/bb_servers/surf/surf_votemap_timeleft.txt)
current_map=$(< /tmp/bb-current-map.txt)

date -d@$time_left_seconds -u +%M⠀minutes,⠀%S⠀seconds > /tmp/bb-time-left.txt
bb_time_left=$(< /tmp/bb-time-left.txt)

echo "$splits"
cowsay -f `ls /usr/share/cowsay/cows/ | shuf -n 1` "Map: $current_map

Time Remaining: $bb_time_left"

sleep 9999
