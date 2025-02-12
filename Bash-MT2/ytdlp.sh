#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

source ~/.env

echo -e "${YELLOW}Attempting to synchronize subscriptions, playlists, & history..${NC}"

scp $MT1:~/Configs/YTDLP/Subscriptions-Playlists.txt ~/Configs/YTDLP/Subscriptions-Playlists.txt 2> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Synchronized subscriptions & playlists.${NC}"
else
    echo -e "${RED}Failed to synchronize subscriptions & playlists.${NC}"
fi

scp $MT1:~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/mt1-watch-history.txt 2> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Synchronized history.${NC}"
else
    echo -e "${RED}Failed to synchronize history.${NC}"
fi

cat ~/Configs/YTDLP/mt1-watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' ~/Configs/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > ~/Configs/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT1:~/Configs/YTDLP/watch-history.txt 2> /dev/null

source ~/Configs/YTDLP/Subscriptions-Playlists.txt

automation_status=$(<~/Configs/YTDLP/Automation-Status.txt)

echo -e "${YELLOW}Storage available:${NC}"
df -H / --output=source,avail
echo -e "${YELLOW}Storage used:${NC}"
du -sh ~/Videos/YouTube/
du -sh ~/Videos/Twitch/

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
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/video-1080p.conf
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "480p")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/video-480p.conf
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
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
            options=("Watch Later" "Binge Playlist" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Watch Later")
            ~/.local/bin/ytdlp $primary_playlist --config-locations ~/Configs/YTDLP/playlist-1080p.conf --playlist-random --max-downloads 10
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Binge Playlist")
            ~/.local/bin/ytdlp $secondary_playlist --config-locations ~/Configs/YTDLP/playlist-1080p.conf --playlist-random --max-downloads 10
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
            "480p")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Watch Later" "Binge Playlist" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Watch Later")
            ~/.local/bin/ytdlp $primary_playlist --config-locations ~/Configs/YTDLP/playlist-480p.conf --playlist-random --max-downloads 10
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Binge Playlist")
            ~/.local/bin/ytdlp $secondary_playlist --config-locations ~/Configs/YTDLP/playlist-480p.conf --playlist-random --max-downloads 10
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
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
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $primary_subscriptions --config-locations ~/Configs/YTDLP/video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Secondary Subscriptions")
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $secondary_subscriptions --config-locations ~/Configs/YTDLP/video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Music Subscriptions")
            ~/.local/bin/ytdlp --match-filter "!is_live & original_url!*=/shorts/" $music_subscriptions --config-locations ~/Configs/YTDLP/video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
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
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $primary_subscriptions --config-locations ~/Configs/YTDLP/video-480p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Secondary Subscriptions")
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $secondary_subscriptions --config-locations ~/Configs/YTDLP/video-480p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Music Subscriptions")
            ~/.local/bin/ytdlp --match-filter "!is_live & original_url!*=/shorts/" $music_subscriptions --config-locations ~/Configs/YTDLP/video-480p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
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
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp --match-filter "!is_live" $link --config-locations ~/Configs/YTDLP/twitch-video-1080p.conf
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "480p")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp --match-filter "!is_live" $link --config-locations ~/Configs/YTDLP/twitch-video-480p.conf
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
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
            ~/.local/bin/ytdlp --match-filter "!is_live" $twitch_following --config-locations ~/Configs/YTDLP/twitch-following-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "480p")
            ~/.local/bin/ytdlp --match-filter "!is_live" $twitch_following --config-locations ~/Configs/YTDLP/twitch-following-480p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
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
            ~/.local/bin/ytdlp --match-filter "!is_live" $twitch_bedtime --config-locations ~/Configs/YTDLP/twitch-following-1080p.conf --playlist-end 2 --lazy-playlist --dateafter now-3days --max-downloads 1
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "480p")
            ~/.local/bin/ytdlp --match-filter "!is_live" $twitch_bedtime --config-locations ~/Configs/YTDLP/twitch-following-480p.conf --playlist-end 2 --lazy-playlist --dateafter now-3days --max-downloads 1
            ~/Scripts/delete-empty-media-directories-mt2.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
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
            echo -e "${RED}Press any key to delete the files.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            rm -rf ~/Videos/YouTube/*
            echo -e "${GREEN}Files deleted.${NC}"
            break
            fi
            done
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Delete Twitch VODs")
            find "/home/soders/Videos/Twitch/" \( -name '*.mp4' \)
            find "/home/soders/Videos/Twitch/" \( -name '*.mkv' \)
            find "/home/soders/Videos/Twitch/" \( -name '*.webm' \)
            echo -e "${RED}Press any key to delete the files.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            rm -rf ~/Videos/Twitch/*
            echo -e "${GREEN}Files deleted.${NC}"
            break
            fi
            done
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Toggle Automation")
            echo -e "${YELLOW}Current status: $automation_status${NC}"
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Enable" "Disable" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Enable")
            echo -e "${GREEN}Enabling automation..${NC}"
            chmod +x ~/Scripts/ytdlp-auto.sh
            echo "Enabled" > ~/Configs/YTDLP/Automation-Status.txt
            sleep 1
            ~/Scripts/ytdlp.sh
            break
            ;;
            "Disable")
            echo -e "${RED}Disabling automation..${NC}"
            chmod -x ~/Scripts/ytdlp-auto.sh
            echo "Disabled" > ~/Configs/YTDLP/Automation-Status.txt
            sleep 1
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Go Back")
            ~/Scripts/ytdlp.sh
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