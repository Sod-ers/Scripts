#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

mkdir /tmp/YTDLP/ 2> /dev/null
mkdir ~/Configs/YTDLP/ 2> /dev/null
mkdir ~/Configs/YTDLP/Backup 2> /dev/null
touch ~/Configs/YTDLP/watch-history.txt
touch ~/Configs/YTDLP/youtube-channel-urls.txt
touch ~/Configs/YTDLP/twitch-following-channel-urls.txt
touch ~/Configs/YTDLP/twitch-bedtime-channel-urls.txt
touch ~/Configs/YTDLP/Automation-Status.txt

echo -e "${YELLOW}Attempting to synchronize history & watch later playlist URL..${NC}"

scp $MT2:~/Configs/YTDLP/watch-history.txt /tmp/YTDLP/watch-history-2.txt
if [ $? -eq 0 ]; then
cat /tmp/YTDLP/watch-history-2.txt >> /tmp/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> /tmp/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' /tmp/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > /tmp/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT2:~/Configs/YTDLP/watch-history.txt

scp $MT2:~/Configs/YTDLP/watch-later-playlist-url.txt /tmp/YTDLP/watch-later-playlist-url-2.txt

if [[ /tmp/YTDLP/watch-later-playlist-url-2.txt -nt ~/Configs/YTDLP/watch-later-playlist-url.txt ]]; then
cp /tmp/YTDLP/watch-later-playlist-url-2.txt ~/Configs/YTDLP/watch-later-playlist-url.txt
fi

echo -e "${GREEN}Synchronized.${NC}"
else
echo -e "${RED}Failed to synchronize.${NC}"
fi

cp ~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/Backup/watch-history.txt

watch_later_playlist_url=$(cat ~/Configs/YTDLP/watch-later-playlist-url.txt)
binge_playlist_url=$(cat ~/Configs/YTDLP/binge-playlist-url.txt)
binge_channel_url=$(cat ~/Configs/YTDLP/binge-channel-url.txt)
automation_status=$(cat ~/Configs/YTDLP/Automation-Status.txt)
backup_timestamp=$(cat ~/Configs/YTDLP/Backup/timestamp.txt)

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
options=("YouTube" "Twitch" "Generic Videos" "Toggle Automation" "Delete Videos" "Backup" "Restore" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "YouTube")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Binge" "Watch Later" "Videos" "Subscriptions" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Binge")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Channel" "Playlist" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Channel")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Recent" "Random" "Set Channel URL" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Recent")
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $binge_channel_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --lazy-playlist --max-downloads 10
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Random")
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $binge_channel_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-random --max-downloads 10
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Set Channel URL")
            touch ~/Configs/YTDLP/binge-channel-url.txt
            read -p "$(echo -e ${RED}"Enter URL: "${NC})" URL
            echo "$URL" > ~/Configs/YTDLP/binge-channel-url.txt
            echo -e "${GREEN}URL set.${NC}" && sleep 2
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
        "Playlist")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Recent" "Random" "Set Playlist URL" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Recent")
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $binge_playlist_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --lazy-playlist --max-downloads 10
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Random")
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $binge_playlist_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-random --max-downloads 10
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Set Playlist URL")
            touch ~/Configs/YTDLP/binge-playlist-url.txt
            read -p "$(echo -e ${RED}"Enter URL: "${NC})" URL
            echo "$URL" > ~/Configs/YTDLP/binge-playlist-url.txt
            echo -e "${GREEN}URL set.${NC}" && sleep 2
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
        "Go Back")
            ~/Scripts/ytdlp.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Watch Later")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Recent" "Random" "Set Playlist URL" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Recent")
            ~/.local/bin/ytdlp $watch_later_playlist_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --lazy-playlist --max-downloads 10
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Random")
            ~/.local/bin/ytdlp $watch_later_playlist_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-random --max-downloads 10
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Set Playlist URL")
            touch ~/Configs/YTDLP/watch-later-playlist-url.txt
            read -p "$(echo -e ${RED}"Enter URL: "${NC})" URL
            echo "$URL" > ~/Configs/YTDLP/watch-later-playlist-url.txt
            echo -e "${GREEN}URL set.${NC}" && sleep 2
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
        "Videos")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Videos" "Playlist" "Channel" "Music Videos" "Sample" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Videos")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Playlist")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Recent" "Random" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Recent")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --lazy-playlist
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Random")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-random
            ~/Scripts/delete-empty-media-directories.sh
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
        "Channel")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Recent" "Random" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Recent")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --lazy-playlist
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Random")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-random
            ~/Scripts/delete-empty-media-directories.sh
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
        "Music Video")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/youtube-music-video-1080p.conf
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Sample")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/youtube-sample.conf
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
options=("Download Subscriptions" "Add a Channel" "Remove a Channel" "Remove All Channels" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Download Subscriptions")
            ~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" -a ~/Configs/YTDLP/youtube-channel-urls.txt --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Add a Channel")
            read -p "$(echo -e ${RED}"Enter URL: "${NC})" URL
            echo "$URL" >> ~/Configs/YTDLP/youtube-channel-urls.txt
            echo -e "${GREEN}Subscription added.${NC}" && sleep 2
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Remove a Channel")
            read -p "$(echo -e ${RED}"Enter URL: "${NC})" URL
            sed -i "/$URL/d" ~/Configs/YTDLP/youtube-channel-urls.txt
            echo -e "${RED}Subscription removed.${NC}" && sleep 2
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Remove All Channels")
            echo -e "${YELLOW}WARNING! About to remove ALL channels..${NC}" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            echo " " > ~/Configs/YTDLP/youtube-channel-urls.txt
            echo -e "${RED}All channels removed.${NC}" && sleep 2
            break
            fi
            done
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
        "Go Back")
            ~/Scripts/ytdlp.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Twitch")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Following" "Bedtime" "VOD" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Following")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Recent VODs" "Add a Channel" "Remove a Channel" "Remove All Channels" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Recent VODs")
            ~/.local/bin/ytdlp --match-filter "!is_live" -a ~/Configs/YTDLP/twitch-following-channel-urls.txt --config-locations ~/Configs/YTDLP/twitch-following-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Add a Channel")
            read -p "$(echo -e ${RED}"Enter username: "${NC})" USERNAME
            echo "https://www.twitch.tv/$USERNAME/videos" >> ~/Configs/YTDLP/twitch-following-channel-urls.txt
            echo -e "${GREEN}Channel added.${NC}" && sleep 2
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Remove a Channel")
            read -p "$(echo -e ${RED}"Enter username: "${NC})" USERNAME
            sed -i "/$USERNAME/d" ~/Configs/YTDLP/twitch-following-channel-urls.txt
            echo -e "${RED}Channel removed.${NC}" && sleep 2
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Remove All Channels")
            echo -e "${YELLOW}WARNING! About to remove ALL channels..${NC}" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            echo " " > ~/Configs/YTDLP/twitch-following-channel-urls.txt
            echo -e "${RED}All channels removed.${NC}" && sleep 2
            break
            fi
            done
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
        "Bedtime")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Recent VODs" "Add a Channel" "Remove a Channel" "Remove All Channels" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Recent VODs")
            ~/.local/bin/ytdlp --match-filter "!is_live" -a ~/Configs/YTDLP/twitch-bedtime-channel-urls.txt --config-locations ~/Configs/YTDLP/twitch-following-1080p.conf --playlist-end 2 --lazy-playlist --dateafter now-3days --max-downloads 1
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Add a Channel")
            read -p "$(echo -e ${RED}"Enter username: "${NC})" USERNAME
            echo "https://www.twitch.tv/$USERNAME/videos" >> ~/Configs/YTDLP/twitch-bedtime-channel-urls.txt
            echo -e "${GREEN}Channel added.${NC}" && sleep 2
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Remove a Channel")
            read -p "$(echo -e ${RED}"Enter username: "${NC})" USERNAME
            sed -i "/$USERNAME/d" ~/Configs/YTDLP/twitch-bedtime-channel-urls.txt
            echo -e "${RED}Channel removed.${NC}" && sleep 2
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Remove All Channels")
            echo -e "${YELLOW}WARNING! About to remove ALL channels..${NC}" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            echo " " > ~/Configs/YTDLP/twitch-bedtime-channel-urls.txt
            echo -e "${RED}All channels removed.${NC}" && sleep 2
            break
            fi
            done
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
        "VOD")
            read -p "$(echo -e ${RED}"Enter VOD URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/twitch-video-1080p.conf
            ~/Scripts/delete-empty-media-directories.sh
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
        "Generic Videos")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/generic-video.conf
            ~/Scripts/delete-empty-media-directories.sh
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Toggle Automation")
echo -e "${YELLOW}Current status: $automation_status${NC}"
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Enable Automation" "Disable Automation" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Enable Automation")
            touch ~/Configs/YTDLP/Automation-Status.txt
            echo -e "${GREEN}Enabling automation..${NC}"
            chmod +x ~/Scripts/ytdlp-auto.sh
            echo "Enabled" > ~/Configs/YTDLP/Automation-Status.txt && sleep 1
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Disable Automation")
            touch ~/Configs/YTDLP/Automation-Status.txt
            echo -e "${RED}Disabling automation..${NC}"
            chmod -x ~/Scripts/ytdlp-auto.sh
            echo "Disabled" > ~/Configs/YTDLP/Automation-Status.txt && sleep 1
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
        "Delete Videos")
export PS3=$'\033[0;31mSelect an option: \e[0m'
options=("Delete YouTube Videos" "Delete Twitch Videos" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
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
        "Delete Twitch Videos")
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
        "Go Back")
            ~/Scripts/ytdlp.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Backup")
            touch ~/Configs/YTDLP/Backup/timestamp.txt
            echo -e "${YELLOW}WARNING! About to overwrite previous backup:${NC} $backup_timestamp" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            mkdir ~/Configs/YTDLP/Backup 2> /dev/null
            touch ~/Configs/YTDLP/Backup/timestamp.txt && date "+%D  %I:%M:%S %p" > ~/Configs/YTDLP/Backup/timestamp.txt
            cp ~/Configs/YTDLP/youtube-channel-urls.txt ~/Configs/YTDLP/Backup/youtube-channel-urls.txt
            cp ~/Configs/YTDLP/twitch-bedtime-channel-urls.txt ~/Configs/YTDLP/Backup/twitch-bedtime-channel-urls.txt
            cp ~/Configs/YTDLP/twitch-following-channel-urls.txt ~/Configs/YTDLP/Backup/twitch-following-channel-urls.txt
            echo -e "${GREEN}Backup successful.${NC}"
            break
            fi
            done
            ~/Scripts/ytdlp.sh
            break
            ;;
        "Restore")
            echo -e "${YELLOW}WARNING! About to overwrite current configuration with data from:${NC} $backup_timestamp" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            cp ~/Configs/YTDLP/Backup/watch-history.txt ~/Configs/YTDLP/watch-history.txt
            cp ~/Configs/YTDLP/Backup/youtube-channel-urls.txt ~/Configs/YTDLP/youtube-channel-urls.txt
            cp ~/Configs/YTDLP/Backup/twitch-bedtime-channel-urls.txt ~/Configs/YTDLP/twitch-bedtime-channel-urls.txt
            cp ~/Configs/YTDLP/Backup/twitch-following-channel-urls.txt ~/Configs/YTDLP/twitch-following-channel-urls.txt
            echo -e "${GREEN}Restoration successful.${NC}"
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
