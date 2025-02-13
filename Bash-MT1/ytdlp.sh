#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${YELLOW}Attempting to synchronize history..${NC}"

scp $MT2:~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/mt2-watch-history.txt 2> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Synchronized history.${NC}"
else
    echo -e "${RED}Failed to synchronize history.${NC}"
fi

cat ~/Configs/YTDLP/mt2-watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' ~/Configs/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > ~/Configs/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT2:~/Configs/YTDLP/watch-history.txt 2> /dev/null

source ~/Configs/YTDLP/Subscriptions-Playlists.txt

echo -e "${YELLOW}Storage available:${NC}"
[ -f "/dev/sdf1" ] || 2> /dev/null df -H /dev/sdf1 --output=source,avail
[ -f "/dev/sde1" ] || 2> /dev/null df -H /dev/sde1 --output=source,avail
echo -e "${YELLOW}Storage used:${NC}"
du -sh ~/Videos/YouTube/
du -sh ~/Videos/VODs/

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
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/video-1080p.conf
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Playlists")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Watch Later" "Binge Playlist" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Watch Later")
            ~/.local/bin/ytdlp $primary_playlist --config-locations ~/Configs/YTDLP/playlist-1080p.conf --playlist-random --max-downloads 10
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Binge Playlist")
            ~/.local/bin/ytdlp-playlists $secondary_playlist ~/Configs/YTDLP/playlist-1080p.conf --playlist-random --max-downloads 10
            ~/Scripts/delete-empty-media-directories-mt1.sh
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
        "Subscriptions")
            export PS3=$'\033[0;31mSelect an option: \e[0m'
            options=("Primary Subscriptions" "Secondary Subscriptions" "Music Subscriptions" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Primary Subscriptions")
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $primary_subscriptions --config-locations ~/Configs/YTDLP/video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Secondary Subscriptions")
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $secondary_subscriptions --config-locations ~/Configs/YTDLP/video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Music Subscriptions")
            ~/.local/bin/ytdlp --match-filter "!is_live & original_url!*=/shorts/" $music_subscriptions --config-locations ~/Configs/YTDLP/video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt1.sh
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
        "YouTube Video Samples")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/sample.conf
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "YouTube Music Videos")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/music-video.conf
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "YouTube Audio")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/audio.conf
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Generic Videos")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/generic.conf
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Twitch VODs")
            read -p "$(echo -e ${RED}"Enter VOD URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/twitch-video-1080p.conf
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Twitch Following")
            ~/.local/bin/ytdlp $twitch_following --config-locations ~/Configs/YTDLP/twitch-following-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Twitch Bedtime")
            ~/.local/bin/ytdlp --match-filter "!is_live" $twitch_bedtime --config-locations ~/Configs/YTDLP/twitch-following-1080p.conf --playlist-end 2 --lazy-playlist --dateafter now-3days --max-downloads 1
            ~/Scripts/delete-empty-media-directories-mt1.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Delete YouTube Videos")
            find ~/Videos/YouTube/ \( -name '*.mp4' \)
            find ~/Videos/YouTube/ \( -name '*.mkv' \)
            find ~/Videos/YouTube/ \( -name '*.webm' \)
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
            find ~/Videos/VODs/ \( -name '*.mp4' \)
            find ~/Videos/VODs/ \( -name '*.mkv' \)
            find ~/Videos/VODs/ \( -name '*.webm' \)
            echo -e "${RED}Press any key to delete the files.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            rm -rf ~/Videos/VODs/*
            echo -e "${GREEN}Files deleted.${NC}"
            break
            fi
            done
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done