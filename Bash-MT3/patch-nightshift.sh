#!/bin/bash

GREEN='\033[0;32m'
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
echo -e "${YELLOW}Applying..${NC}"       
pkill redshift
cp ~/Configs/Redshift/.env-summer ~/Configs/Redshift/.env
cp ~/Configs/Redshift/Summer.conf ~/.config/redshift.conf
sleep 5
redshift-gtk > /dev/null 2>&1&
echo -e "${GREEN}Summer settings applied.${NC}"
sleep 3
            break
            ;;
        "Set Winter")
echo -e "${YELLOW}Applying..${NC}"        
pkill redshift
cp ~/Configs/Redshift/.env-winter ~/Configs/Redshift/.env
cp ~/Configs/Redshift/Winter.conf ~/.config/redshift.conf
sleep 5
redshift-gtk > /dev/null 2>&1&
echo -e "${GREEN}Winter settings applied.${NC}"
sleep 3
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
