#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

source ~/.env

echo -e "${YELLOW}Attempting to synchronize playlists..${NC}"
scp $MT1:~/Configs/spotDL/.env ~/Configs/spotDL/.env 2> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Synchronized playlists.${NC}"
else
    echo -e "${RED}Failed to synchronize playlists.${NC}"
fi

source ~/Configs/spotDL/.env

automation_status=$(<~/Configs/spotDL/Automation-Status.txt)

echo -e "${YELLOW}Storage available:${NC}"
df -H / --output=source,avail
echo -e "${YELLOW}Storage used:${NC}"
du -sh "/home/soders/Jellyfin Server Media/Songs"
du -sh "/home/soders/Jellyfin Server Media/Albums"
du -sh "/home/soders/Jellyfin Server Media/Spotify"
du -sh "/home/soders/Jellyfin Server Media/Soundcloud"
du -sh "/home/soders/Jellyfin Server Media/YouTube-Music"
du -sh "/home/soders/Jellyfin Server Media/Radio"
du -sh "/home/soders/Jellyfin Server Media/First-Listen"

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
printf "\033]0;%s\a" "SPOTDL@MT2"
export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("First Listen" "Radio" "spotDL Song" "spotDL Album" "spotDL Playlist" "spotDL Favorite Playlists" "spotDL Liked Songs" "spotDL Saved Albums" "spotDL User Playlists" "spotDL Merge URLs" "YouTube Song" "YouTube Album" "YouTube Playlist" "Soundcloud Song" "Soundcloud Album" "Soundcloud Playlist" "Toggle Automation" "Delete All Music" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "First Listen")
            export PS3=$'\033[0;32mSelect an option: \e[0m'
            options=("Spotify" "YouTube" "Soundcloud" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
        "Spotify")
            cp ~/Configs/spotDL/first-listen.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/spotdl download $link
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "YouTube")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/youtube-first-listen.conf
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "Soundcloud")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/soundcloud-first-listen.conf
            ~/Scripts/completion-chime.sh && sleep 1
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
        "Radio")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/radio.conf
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "spotDL Song")
            cp ~/Configs/spotDL/song.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/spotdl download $link
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "spotDL Album")
            cp ~/Configs/spotDL/album.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/spotdl download $link
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "spotDL Playlist")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            cp ~/Configs/spotDL/linux-playlists.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download $link
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "spotDL Favorite Playlists")
            cp ~/Configs/spotDL/linux-playlists.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download $spotify_playlists
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "spotDL Liked Songs")
            cp ~/Configs/spotDL/liked-songs.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download saved --user-auth
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "spotDL Saved Albums")
            cp ~/Configs/spotDL/saved-albums/config.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download all-user-saved-albums --user-auth
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "spotDL User Playlists")
            cp ~/Configs/spotDL/linux-playlists/config.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download all-user-playlists --user-auth
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "spotDL Merge URLs")
            export PS3=$'\033[0;32mSelect an option: \e[0m'
            options=("Song" "Album" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Song")
            cp ~/Configs/spotDL/Song/config.json ~/.spotdl/config.json
            read -p "$(echo -e ${RED}"Enter YouTube or Soundcloud URL: "${NC})" cloudtube_link
            read -p "$(echo -e ${GREEN}"Enter Spotify URL: "${NC})" spotify_link
            ~/.local/bin/spotdl download "$cloudtube_link|$spotify_link"
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
            "Album")
            cp ~/Configs/spotDL/Album/config.json ~/.spotdl/config.json
            read -p "$(echo -e ${RED}"Enter YouTube or Soundcloud URL: "${NC})" cloudtube_link
            read -p "$(echo -e ${GREEN}"Enter Spotify URL: "${NC})" spotify_link
            ~/.local/bin/spotdl download "$cloudtube_link|$spotify_link"
            ~/Scripts/completion-chime.sh && sleep 1
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
        "YouTube Song")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/song.conf
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "YouTube Album")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/album.conf
            find ~/Music/Albums/ -mindepth 1 -type d |
            while read empty
            do
            find "$empty" -mindepth 1    -type d | read && continue
            find "$empty" -iname '*.flac' -type f | read && continue
            rm -r "$empty"
            done
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "YouTube Playlist")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/youtube-music-playlist.conf
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "YouTube Favorite Playlists")
            ~/.local/bin/ytdlp $youtube_playlists --config-locations ~/Configs/YTDLP/youtube-music-playlist.conf
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "Soundcloud Song")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/soundcloud-song.conf
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "Soundcloud Album")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/soundcloud-album.conf
            find ~/Music/Albums/ -mindepth 1 -type d |
            while read empty
            do
            find "$empty" -mindepth 1    -type d | read && continue
            find "$empty" -iname '*.flac' -type f | read && continue
            rm -r "$empty"
            done
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "Soundcloud Playlist")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/soundcloud-playlist.conf
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "Soundcloud Favorite Playlists")
            ~/.local/bin/ytdlp $soundcloud_playlists --config-locations ~/Configs/YTDLP/soundcloud-playlist.conf
            ~/Scripts/completion-chime.sh && sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
        "Toggle Automation")
            echo -e "${YELLOW}Current status: $automation_status"
            echo -e "${NC} "
            export PS3=$'\033[0;32mSelect an option: \e[0m'
            options=("Enable" "Disable" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Enable")
            echo -e "${GREEN}Enabling automation..${NC}"
            chmod +x ~/Scripts/spotdl-auto.sh
            echo "Enabled" > ~/Configs/spotDL/Automation-Status.txt
            sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
            "Disable")
            echo -e "${RED}Disabling automation..${NC}"
            chmod -x ~/Scripts/spotdl-auto.sh
            echo "Disabled" > ~/Configs/spotDL/Automation-Status.txt
            sleep 1
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
        "Delete All Music")
            find "/home/soders/Jellyfin Server Media/Albums" \( -name '*.flac' \)
            find "/home/soders/Jellyfin Server Media/First-Listen" \( -name '*.flac' \)
            find "/home/soders/Jellyfin Server Media/Songs" \( -name '*.flac' \)
            find "/home/soders/Jellyfin Server Media/Soundcloud" \( -name '*.flac' \)
            find "/home/soders/Jellyfin Server Media/Spotify" \( -name '*.flac' \)
            find "/home/soders/Jellyfin Server Media/YouTube-Music" \( -name '*.flac' \)
            echo -e "${RED}Press any key to delete the files.${NC}"
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            rm -rf ~/Music/Albums/*
            rm -rf ~/Music/First-Listen/*
            rm -rf ~/Music/Songs/*
            rm -rf ~/Music/Soundcloud/*
            rm -rf ~/Music/Spotify/*
            rm -rf ~/Music/YouTube-Music/*
            rm -rf ~/Music/Radio/*
            echo -e "${GREEN}Files deleted.${NC}"
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
