#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

source /home/soders/.env

echo -e "${YELLOW}Attempting to synchronize subscriptions, playlists, & history.."

sshpass -p $SSH_PASSWORD scp $MT1:/home/soders/Configs/YTDLP/Subscriptions-Playlists.txt /home/soders/Configs/YTDLP/Subscriptions-Playlists.txt 2> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Synchronized subscriptions & playlists."
else
    echo -e "${RED}Failed to synchronize subscriptions & playlists."
fi

sshpass -p $SSH_PASSWORD scp $MT1:/home/soders/Configs/YTDLP/watch-history.txt /home/soders/Configs/YTDLP/mt1-watch-history.txt 2> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Synchronized history."
else
    echo -e "${RED}Failed to synchronize history."
fi

cat /home/soders/Configs/YTDLP/mt1-watch-history.txt >> /home/soders/Configs/YTDLP/watch-history-unsynced.txt

cat /home/soders/Configs/YTDLP/watch-history.txt >> /home/soders/Configs/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' /home/soders/Configs/YTDLP/watch-history-unsynced.txt > /home/soders/Configs/YTDLP/watch-history.txt

echo " " > /home/soders/Configs/YTDLP/watch-history-unsynced.txt

sshpass -p $SSH_PASSWORD scp /home/soders/Configs/YTDLP/watch-history.txt $MT1:/home/soders/Configs/YTDLP/watch-history.txt 2> /dev/null

source "/home/soders/Configs/YTDLP/Subscriptions-Playlists.txt"

automation_status=$(</home/soders/Configs/YTDLP/Automation-Status.txt)

echo -e "${YELLOW}Storage available:${NC}"
df -H / --output=source,avail
echo -e "${YELLOW}Storage used:${NC}"
du -sh /home/soders/Videos/YouTube/
du -sh /home/soders/Videos/Twitch/

echo -e "${RED} "
echo "⠀⠀⠀⠀⠀⣀⣤⣤⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣦⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀"
echo "⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀"
echo "⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀"
echo "⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠉⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀"
echo "⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀"
echo "⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀"
echo "⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀"
echo "⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀"
echo "⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀"
echo "⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀"
echo "⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠟⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀"
echo -e "${NC} "
printf "\033]0;%s\a" "YTDLP@MT2"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("YouTube Videos" "Playlists" "Subscriptions" "Twitch VODs" "Twitch Following" "Twitch Bedtime" "Delete YouTube Videos" "Delete Twitch VODs" "Toggle Automation" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "YouTube Videos")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("1080p" "480p" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "1080p")
            /home/soders/.local/bin/ytdlp-videos-1080p -U
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-videos-1080p $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "480p")
            /home/soders/.local/bin/ytdlp-videos-480p -U
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-videos-480p $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Playlists")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("1080p" "480p" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "1080p")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Watch Later" "Secondary Playlist" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Watch Later")
            /home/soders/.local/bin/ytdlp-playlist-1080p -U
            /home/soders/.local/bin/ytdlp-playlist-1080p $primary_playlist --playlist-random --max-downloads 10
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "Secondary Playlist")
            /home/soders/.local/bin/ytdlp-playlist-1080p -U
            /home/soders/.local/bin/ytdlp-playlist-1080p $secondary_playlist --playlist-random --max-downloads 10
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
            "480p")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Watch Later" "Secondary Playlist" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Watch Later")
            /home/soders/.local/bin/ytdlp-playlist-480p -U
            /home/soders/.local/bin/ytdlp-playlist-480p $primary_playlist --playlist-random --max-downloads 10
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "Secondary Playlist")
            /home/soders/.local/bin/ytdlp-playlist-480p -U
            /home/soders/.local/bin/ytdlp-playlist-480p $secondary_playlist --playlist-random --max-downloads 10
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Subscriptions")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("1080p" "480p" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "1080p")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Primary Subscriptions" "Secondary Subscriptions" "Music Subscriptions" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Primary Subscriptions")
            /home/soders/.local/bin/ytdlp-videos-1080p -U
            /home/soders/.local/bin/ytdlp-videos-1080p --match-filter "!was_live & original_url!*=/shorts/" $primary_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "Secondary Subscriptions")
            /home/soders/.local/bin/ytdlp-videos-1080p -U
            /home/soders/.local/bin/ytdlp-videos-1080p --match-filter "!was_live & original_url!*=/shorts/" $secondary_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "Music Subscriptions")
            /home/soders/.local/bin/ytdlp-videos-1080p -U
            /home/soders/.local/bin/ytdlp-videos-1080p --match-filter "!is_live & original_url!*=/shorts/" $music_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
            "480p")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Primary Subscriptions" "Secondary Subscriptions" "Music Subscriptions" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Primary Subscriptions")
            /home/soders/.local/bin/ytdlp-videos-480p -U
            /home/soders/.local/bin/ytdlp-videos-480p --match-filter "!was_live & original_url!*=/shorts/" $primary_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "Secondary Subscriptions")
            /home/soders/.local/bin/ytdlp-videos-480p -U
            /home/soders/.local/bin/ytdlp-videos-480p --match-filter "!was_live & original_url!*=/shorts/" $secondary_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "Music Subscriptions")
            /home/soders/.local/bin/ytdlp-videos-480p -U
            /home/soders/.local/bin/ytdlp-videos-480p --match-filter "!is_live & original_url!*=/shorts/" $music_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Twitch VODs")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("1080p" "480p" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "1080p")
            /home/soders/.local/bin/ytdlp-twitch-videos-1080p -U
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-twitch-videos-1080p --match-filter "!is_live" $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "480p")
            /home/soders/.local/bin/ytdlp-twitch-videos-480p -U
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-twitch-videos-480p --match-filter "!is_live" $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Twitch Following")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("1080p" "480p" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "1080p")
            /home/soders/.local/bin/ytdlp-twitch-following-1080p -U
            /home/soders/.local/bin/ytdlp-twitch-following-1080p --match-filter "!is_live" $twitch_following --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "480p")
            /home/soders/.local/bin/ytdlp-twitch-following-480p -U
            /home/soders/.local/bin/ytdlp-twitch-following-480p --match-filter "!is_live" $twitch_following --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Twitch Bedtime")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("1080p" "480p" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "1080p")
            /home/soders/.local/bin/ytdlp-twitch-following-1080p -U
            /home/soders/.local/bin/ytdlp-twitch-following-1080p --match-filter "!is_live" $twitch_bedtime --playlist-end 2 --lazy-playlist --dateafter now-3days --max-downloads 1
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "480p")
            /home/soders/.local/bin/ytdlp-twitch-following-480p -U
            /home/soders/.local/bin/ytdlp-twitch-following-480p --match-filter "!is_live" $twitch_bedtime --playlist-end 2 --lazy-playlist --dateafter now-3days --max-downloads 1
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Delete YouTube Videos")
            find "/home/soders/Videos/YouTube/" \( -name '*.mp4' \)
            find "/home/soders/Videos/YouTube/" \( -name '*.mkv' \)
            find "/home/soders/Videos/YouTube/" \( -name '*.webm' \)
            echo -e '\033[0;31mPress any key to delete the files.\e[0m'
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            rm -rf /home/soders/Videos/YouTube/*
            echo -e '\033[0;32mFiles deleted.\e[0m'
            break
            fi
            done
            /home/soders/.local/bin/ytdlp
            break
            ;;
        "Delete Twitch VODs")
            find "/home/soders/Videos/Twitch/" \( -name '*.mp4' \)
            find "/home/soders/Videos/Twitch/" \( -name '*.mkv' \)
            find "/home/soders/Videos/Twitch/" \( -name '*.webm' \)
            echo -e '\033[0;31mPress any key to delete the files.\e[0m'
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            rm -rf /home/soders/Videos/Twitch/*
            echo -e '\033[0;32mFiles deleted.\e[0m'
            break
            fi
            done
            /home/soders/.local/bin/ytdlp
            break
            ;;
        "Toggle Automation")
            echo -e "${YELLOW}Current status: $automation_status"
            echo -e "${NC} "
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Enable" "Disable" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Enable")
            echo -e "${GREEN}Enabling automation.."
            chmod +x "/home/soders/Scripts/ytdlp-auto.sh"
            echo "Enabled" > /home/soders/Configs/YTDLP/Automation-Status.txt
            sleep 1
            /home/soders/.local/bin/ytdlp
            break
            ;;
            "Disable")
            echo -e "${RED}Disabling automation.."
            chmod -x "/home/soders/Scripts/ytdlp-auto.sh"
            echo "Disabled" > /home/soders/Configs/YTDLP/Automation-Status.txt
            sleep 1
            /home/soders/.local/bin/ytdlp
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/ytdlp
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
