#!/bin/bash

PURPLE='\033[01;35m'
PINK='\033[01;35m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

printf "\033]0;%s\a" "Focus Modes"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Work" "Study" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Work")
            echo -e ${GREEN}"Applying Work focus mode"${NC}
            nohup /home/soders/Scripts/work-workflow.sh > /dev/null 2>&1& sleep 1 && exit
            break
            ;;
        "Study")
            echo -e ${GREEN}"Applying Study focus mode"${NC}
            nohup /home/soders/Scripts/study-workflow.sh > /dev/null 2>&1& sleep 1 && exit
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
