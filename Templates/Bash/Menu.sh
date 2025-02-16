#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

printf "\033]0;%s\a" "terminal title"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("option 1" "option 2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "option 1")
            echo -e "${RED}do something${NC}"
            break
            ;;
        "option 2")
            echo -e "${RED}do something${NC}"
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
