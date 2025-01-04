#!/bin/bash

source /home/soders/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${YELLOW}Attempting to synchronize history.."

sshpass -p $SSH_PASSWORD scp $MT2:/home/soders/Configs/YTDLP/watch-history.txt /home/soders/Configs/YTDLP/mt2-watch-history.txt 2> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Synchronized history."
else
    echo -e "${RED}Failed to synchronize history."
fi

cat /home/soders/Configs/YTDLP/mt2-watch-history.txt >> /home/soders/Configs/YTDLP/watch-history-unsynced.txt

cat /home/soders/Configs/YTDLP/watch-history.txt >> /home/soders/Configs/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' /home/soders/Configs/YTDLP/watch-history-unsynced.txt > /home/soders/Configs/YTDLP/watch-history.txt

echo " " > /home/soders/Configs/YTDLP/watch-history-unsynced.txt

sshpass -p $SSH_PASSWORD scp /home/soders/Configs/YTDLP/watch-history.txt $MT2:/home/soders/Configs/YTDLP/watch-history.txt 2> /dev/null

source "/home/soders/Configs/YTDLP/Subscriptions-Playlists.txt"

echo -e "${YELLOW}Storage available:${NC}"
[ -f "/dev/sdf1" ] || 2> /dev/null df -H /dev/sdf1 --output=source,avail
[ -f "/dev/sde1" ] || 2> /dev/null df -H /dev/sde1 --output=source,avail
echo -e "${YELLOW}Storage used:${NC}"
du -sh /home/soders/Videos/YouTube/
du -sh /home/soders/Videos/VODs/

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
printf "\033]0;%s\a" "YTDLP@MT1"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("YouTube Videos" "Playlists" "Subscriptions" "YouTube Video Samples" "YouTube Music Videos" "YouTube Audio" "Generic Videos" "Twitch VODs" "Twitch Following" "Twitch Bedtime" "Delete YouTube Videos" "Delete Twitch Videos" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "YouTube Videos")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-videos -U
            /home/soders/.local/bin/ytdlp-videos $link
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Playlists")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Watch Later" "Binge Playlist" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Watch Later")
            /home/soders/.local/bin/ytdlp-playlists -U
            /home/soders/.local/bin/ytdlp-playlists $primary_playlist --playlist-random --max-downloads 10
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "Binge Playlist")
            /home/soders/.local/bin/ytdlp-playlists -U
            /home/soders/.local/bin/ytdlp-playlists $secondary_playlist --playlist-random --max-downloads 10
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
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
        "Subscriptions")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Primary Subscriptions" "Secondary Subscriptions" "Music Subscriptions" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Primary Subscriptions")
            /home/soders/.local/bin/ytdlp-videos -U
            /home/soders/.local/bin/ytdlp-videos --match-filter "!was_live & original_url!*=/shorts/" $primary_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "Secondary Subscriptions")
            /home/soders/.local/bin/ytdlp-videos -U
            /home/soders/.local/bin/ytdlp-videos --match-filter "!was_live & original_url!*=/shorts/" $secondary_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
            "Music Subscriptions")
            /home/soders/.local/bin/ytdlp-videos -U
            /home/soders/.local/bin/ytdlp-videos --match-filter "!is_live & original_url!*=/shorts/" $music_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
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
        "YouTube Video Samples")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-sample -U
            /home/soders/.local/bin/ytdlp-sample $link
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "YouTube Music Videos")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-music-videos -U
            /home/soders/.local/bin/ytdlp-music-videos $link
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "YouTube Audio")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-audio -U
            /home/soders/.local/bin/ytdlp-audio $link
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Generic Videos")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-generic -U
            /home/soders/.local/bin/ytdlp-generic $link
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Twitch VODs")
            read -p "$(echo -e ${RED}"Enter VOD URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-twitch-videos -U
            /home/soders/.local/bin/ytdlp-twitch-videos $link
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Twitch Following")
            /home/soders/.local/bin/ytdlp-twitch-following -U
            /home/soders/.local/bin/ytdlp-twitch-following $twitch_following --playlist-end 1 --lazy-playlist --dateafter now-3days
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Twitch Bedtime")
            /home/soders/.local/bin/ytdlp-twitch-following -U
            /home/soders/.local/bin/ytdlp-twitch-following --match-filter "!is_live" $twitch_bedtime --playlist-end 2 --lazy-playlist --dateafter now-3days --max-downloads 1
            /home/soders/Scripts/delete-empty-media-directories-mt1.sh
            /home/soders/Scripts/completion-chime.sh
            sleep 1
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
            find "/home/soders/Videos/VODs/" \( -name '*.mp4' \)
            find "/home/soders/Videos/VODs/" \( -name '*.mkv' \)
            find "/home/soders/Videos/VODs/" \( -name '*.webm' \)
            echo -e '\033[0;31mPress any key to delete the files.\e[0m'
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            rm -rf /home/soders/Videos/VODs/*
            echo -e '\033[0;32mFiles deleted.\e[0m'
            break
            fi
            done
            /home/soders/.local/bin/ytdlp
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
