#!/bin/bash

source ~/.env

NC='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'

mkdir /tmp/spotDL/ 2> /dev/null
mkdir ~/Configs/spotDL/ 2> /dev/null
mkdir ~/Configs/spotDL/Backup/ 2> /dev/null
mkdir ~/Music/First-Listen/ 2> /dev/null
touch ~/Music/First-Listen/do-not-delete.txt
echo "1" > ~/Music/First-Listen/do-not-delete.txt

source ~/Configs/spotDL/.env

backup_timestamp=$(cat ~/Configs/spotDL/Backup/timestamp.txt)
automation_status=$(cat ~/Configs/spotDL/Automation-Status.txt)

echo -e "${YELLOW}Storage available:${NC}"
[ -f "/dev/sdf1" ] || 2> /dev/null df -H /dev/sdf1 --output=source,avail
[ -f "/dev/sde1" ] || 2> /dev/null df -H /dev/sde1 --output=source,avail
echo -e "${YELLOW}Storage used:${NC}"
du -sh ~/Music/Songs
du -sh ~/Music/Albums
du -sh ~/Music/Spotify
du -sh ~/Music/Soundcloud
du -sh ~/Music/YouTube
du -sh ~/Music/Radio
du -sh ~/Music/First-Listen

echo -e "${GREEN} "
echo "⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣶⣶⣶⣶⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⠀⠀⠀⠀"
echo "⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀"
echo "⠀⢀⣾⣿⡿⠿⠛⠛⠛⠉⠉⠉⠉⠛⠛⠛⠿⠿⣿⣿⣿⣿⣿⣷⡀⠀"
echo "⠀⣾⣿⣿⣇⠀⣀⣀⣠⣤⣤⣤⣤⣤⣀⣀⠀⠀⠀⠈⠙⠻⣿⣿⣷⠀"
echo "⢠⣿⣿⣿⣿⡿⠿⠟⠛⠛⠛⠛⠛⠛⠻⠿⢿⣿⣶⣤⣀⣠⣿⣿⣿⡄"
echo "⢸⣿⣿⣿⣿⣇⣀⣀⣤⣤⣤⣤⣤⣄⣀⣀⠀⠀⠉⠛⢿⣿⣿⣿⣿⡇"
echo "⠘⣿⣿⣿⣿⣿⠿⠿⠛⠛⠛⠛⠛⠛⠿⠿⣿⣶⣦⣤⣾⣿⣿⣿⣿⠃"
echo "⠀⢿⣿⣿⣿⣿⣤⣤⣤⣤⣶⣶⣦⣤⣤⣄⡀⠈⠙⣿⣿⣿⣿⣿⡿⠀"
echo "⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⡿⠁⠀"
echo "⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀"
echo "⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠿⠿⠿⠿⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀"
echo -e "${NC} "
printf "\033]0;%s\a" "SPOTDL@MT1"
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Spotify" "YouTube" "Soundcloud" "Radio" "Toggle Automation" "Delete Music" "Backup" "Restore" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Spotify")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Songs" "Album" "Playlist" "First Listen" "Artist" "Merge URLs" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Songs")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Songs" "Liked Songs" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Songs")
            cp ~/Configs/spotDL/song.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/spotdl --bitrate 192k download $URLS
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Liked Songs")
            cp ~/Configs/spotDL/liked-songs.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --cookie-file ~/Configs/spotDL/cookies.txt --bitrate 192k download saved --user-auth --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Album")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Album" "Saved Albums" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Album")
            cp ~/Configs/spotDL/album.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/spotdl --bitrate 192k download $URLS --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Saved Albums")
            cp ~/Configs/spotDL/saved-albums.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download all-user-saved-albums --user-auth --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Playlist")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Foobar" "Linux" "Windows" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Foobar")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Playlist" "Favorite Playlists" "My Playlists" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Playlist")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/foobar-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download $URLS --m3u "{list} - Foobar" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Favorite Playlists")
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/foobar-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download $favorite_playlists --m3u "{list} - Foobar" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "My Playlists")
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/foobar-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download all-user-playlists --user-auth --m3u "{list} - Foobar" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Linux")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Playlist" "Favorite Playlists" "My Playlists" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Playlist")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/linux-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download $URLS --m3u "{list} - Linux" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Favorite Playlists")
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/linux-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download $favorite_playlists --m3u "{list} - Linux" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "My Playlists")
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/linux-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download all-user-playlists --user-auth --m3u "{list} - Linux" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Windows")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Playlist" "Favorite Playlists" "My Playlists" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Playlist")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/windows-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download $URLS --m3u "{list} - Windows" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Favorite Playlists")
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/windows-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download $favorite_playlists --m3u "{list} - Windows" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "My Playlists")
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/windows-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl --bitrate 192k download all-user-playlists --user-auth --m3u "{list} - Windows" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "First Listen")
            cp ~/Configs/spotDL/first-listen.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/spotdl --bitrate 192k download $URLS --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Artist")
            cp ~/Configs/spotDL/artist.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter artist URL: "${NC})" URL
            ~/.local/bin/spotdl --bitrate 192k download $URL --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Merge URLs")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Song" "Album" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
            "Song")
            cp ~/Configs/spotDL/song.json ~/.spotdl/config.json
            read -p "$(echo -e ${RED}"Enter YouTube or Soundcloud URL: "${NC})" cloudtube_url
            read -p "$(echo -e ${GREEN}"Enter Spotify URL: "${NC})" spotify_url
            ~/.local/bin/spotdl --bitrate 192k download "$cloudtube_url|$spotify_url"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Album")
            cp ~/Configs/spotDL/album.json ~/.spotdl/config.json
            read -p "$(echo -e ${RED}"Enter YouTube or Soundcloud URL: "${NC})" cloudtube_url
            read -p "$(echo -e ${GREEN}"Enter Spotify URL: "${NC})" spotify_url
            ~/.local/bin/spotdl --bitrate 192k download "$cloudtube_url|$spotify_url" --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "YouTube")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Song" "Album" "Playlist" "First Listen" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Song")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/song.conf
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Album")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/album.conf --sleep-interval 30 --max-sleep-interval 60
            find ~/Music/Albums/ -mindepth 1 -type d |
            while read empty
            do
            find "$empty" -mindepth 1    -type d | read && continue
            find "$empty" -iname '*.flac' -type f | read && continue
            rm -r "$empty"
            done
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Playlist")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/youtube-music-playlist.conf --sleep-interval 30 --max-sleep-interval 60
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "First Listen")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/youtube-first-listen.conf --sleep-interval 30 --max-sleep-interval 60
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Soundcloud")
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Song" "Album" "Playlist" "First Listen" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Song")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/soundcloud-song.conf
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Album")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/soundcloud-album.conf --sleep-interval 30 --max-sleep-interval 60
            find ~/Music/Albums/ -mindepth 1 -type d |
            while read empty
            do
            find "$empty" -mindepth 1    -type d | read && continue
            find "$empty" -iname '*.flac' -type f | read && continue
            rm -r "$empty"
            done
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Playlist")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/soundcloud-playlist.conf --sleep-interval 30 --max-sleep-interval 60
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "First Listen")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS --config-locations ~/Configs/YTDLP/soundcloud-first-listen.conf --sleep-interval 30 --max-sleep-interval 60
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Radio")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" URLS
            ~/.local/bin/ytdlp $URLS
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Toggle Automation")
echo -e "${YELLOW}Current status: $automation_status${NC}"
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("Enable Automation" "Disable Automation" "Go Back")
select opt in "${options[@]}"
do
    case $opt in
        "Enable Automation")
            touch ~/Configs/spotDL/Automation-Status.txt
            echo -e "${GREEN}Enabling automation..${NC}"
            chmod +x ~/Scripts/spotdl-auto-1.sh
            chmod +x ~/Scripts/spotdl-auto-2.sh
            echo "Enabled" > ~/Configs/spotDL/Automation-Status.txt && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "Disable Automation")
            touch ~/Configs/spotDL/Automation-Status.txt
            echo -e "${RED}Disabling automation..${NC}"
            chmod -x ~/Scripts/spotdl-auto-1.sh
            chmod -x ~/Scripts/spotdl-auto-2.sh
            echo "Disabled" > ~/Configs/spotDL/Automation-Status.txt && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "Go Back")
            ~/Scripts/spotdl.sh
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Delete Music")
            find "~/Music/First-Listen" \( -name '*.flac' \)
            echo -e "${RED}Press any key to delete the files.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            rm -rf ~/Music/First-Listen/*
            rm -rf /media/soders/2TBNTFS/Music/First-Listen/*
            echo -e "${GREEN}Files deleted.${NC}"
            break
            fi
            done
            ~/Scripts/spotdl.sh
            break
            ;;
        "Backup")
            touch ~/Configs/spotDL/Backup/timestamp.txt
            echo -e "${YELLOW}WARNING! About to overwrite previous backup:${NC} $backup_timestamp" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            mkdir ~/Configs/spotDL/Backup 2> /dev/null
            touch ~/Configs/spotDL/Backup/timestamp.txt && date "+%D  %I:%M:%S %p" > ~/Configs/spotDL/Backup/timestamp.txt
            cp ~/Configs/spotDL/.env ~/Configs/spotDL/Backup/.env
            echo -e "${GREEN}Backup successful.${NC}"
            break
            fi
            done
            ~/Scripts/spotdl.sh
            break
            ;;
        "Restore")
            echo -e "${YELLOW}WARNING! About to overwrite current configuration with data from:${NC} $backup_timestamp" && sleep 3
            echo -e "${RED}Press any key to proceed.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            cp ~/Configs/spotDL/Backup/.env ~/Configs/spotDL/.env
            echo -e "${GREEN}Restoration successful.${NC}"
            break
            fi
            done
            ~/Scripts/spotdl.sh
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
