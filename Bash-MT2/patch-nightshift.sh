#!/bin/bash

YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${YELLOW}Patch Nightshift:${NC}"
printf "\033]0;%s\a" "Patch Nightshift"
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Set Summer" "Set Winter" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Set Summer")
pkill redshift
cp /home/soders/Configs/Redshift/.env-summer /home/soders/.env
cp /home/soders/Configs/Redshift/Summer.conf /home/soders/.config/redshift.conf
redshift -c /home/soders/.config/redshift.conf
            break
            ;;
        "Set Winter")
pkill redshift
cp /home/soders/Configs/Redshift/.env-winter /home/soders/.env
cp /home/soders/Configs/Redshift/Winter.conf /home/soders/.config/redshift.conf
redshift -c /home/soders/.config/redshift.conf
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
