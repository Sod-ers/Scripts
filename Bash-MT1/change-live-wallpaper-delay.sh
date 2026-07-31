#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

printf "\033]0;%s\a" "Live Wallpaper Delay"
export PS3=$'\033[0;31mSet Live Wallpaper Delay: \e[0m'
options=("10 seconds" "1 minute" "3 minutes" "5 minutes" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "10 seconds")
echo 10 > /tmp/live-wallpaper/timeout.txt
            break
            ;;
        "1 minute")
echo 60 > /tmp/live-wallpaper/timeout.txt
            break
            ;;
        "3 minutes")
echo 180 > /tmp/live-wallpaper/timeout.txt
            break
            ;;
        "5 minutes")
echo 300 > /tmp/live-wallpaper/timeout.txt
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
