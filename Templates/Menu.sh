#!/bin/bash

printf "\033]0;%s\a" "terminal title"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("option 1" "option 2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "option 1")
            echo "do something"
            break
            ;;
        "option 2")
            echo "do something"
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
