#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

source /home/soders/.env

source /home/soders/Configs/spotDL/.env

automation_status=$(</home/soders/Configs/spotDL/Automation-Status.txt)

echo -e "${YELLOW}Storage available:${NC}"
[ -f "/dev/sdf1" ] || 2> /dev/null df -H /dev/sdf1 --output=source,avail
[ -f "/dev/sde1" ] || 2> /dev/null df -H /dev/sde1 --output=source,avail
echo -e "${YELLOW}Storage used:${NC}"
du -sh /home/soders/Music/Songs
du -sh /home/soders/Music/Albums
du -sh /home/soders/Music/Spotify
du -sh /home/soders/Music/Soundcloud
du -sh /home/soders/Music/YouTube
du -sh /home/soders/Music/Radio
du -sh /home/soders/Music/First-Listen

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
options=("First Listen" "Radio" "spotDL Song" "spotDL Album" "spotDL Playlist" "spotDL Favorite Playlists" "spotDL Liked Songs" "spotDL Saved Albums" "spotDL User Playlists" "spotDL Merge URLs" "YouTube Song" "YouTube Album" "YouTube Playlist" "Soundcloud Song" "Soundcloud Album" "Soundcloud Playlist" "Toggle Automation" "Delete Listened Music" "Quit")
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
            cp /home/soders/Configs/spotDL/First-Listen/config.json /home/soders/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            pip install --upgrade spotdl
            /home/soders/.local/bin/spotdl-app download $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "YouTube")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-music-first -U
            /home/soders/.local/bin/ytdlp-music-first $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Soundcloud")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-soundcloud-first -U
            /home/soders/.local/bin/ytdlp-soundcloud-first $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/spotdl
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Radio")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-radio -U
            /home/soders/.local/bin/ytdlp-radio $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "spotDL Song")
            cp /home/soders/Configs/spotDL/Song/config.json /home/soders/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            pip install --upgrade spotdl
            /home/soders/.local/bin/spotdl-app download $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "spotDL Album")
            cp /home/soders/Configs/spotDL/Album/config.json /home/soders/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            pip install --upgrade spotdl
            /home/soders/.local/bin/spotdl-app download $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "spotDL Playlist")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            pip install --upgrade spotdl
            cd /home/soders/Music/Playlists/
            cp /home/soders/Configs/spotDL/Windows-Playlists/config.json /home/soders/.spotdl/config.json
            /home/soders/.local/bin/spotdl-app download $link --m3u "{list} - Windows"
            cp /home/soders/Configs/spotDL/Linux-Playlists/config.json /home/soders/.spotdl/config.json
            /home/soders/.local/bin/spotdl-app download $link --m3u "{list} - Linux"
            cp /home/soders/Configs/spotDL/Foobar-Playlists/config.json /home/soders/.spotdl/config.json
            /home/soders/.local/bin/spotdl-app download $link --m3u "{list} - Foobar"
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "spotDL Favorite Playlists")
            pip install --upgrade spotdl
            cd /home/soders/Music/Playlists/
            cp /home/soders/Configs/spotDL/Windows-Playlists/config.json /home/soders/.spotdl/config.json
            /home/soders/.local/bin/spotdl-app download $spotify_playlists --m3u "{list} - Windows"
            cp /home/soders/Configs/spotDL/Linux-Playlists/config.json /home/soders/.spotdl/config.json
            /home/soders/.local/bin/spotdl-app download $spotify_playlists --m3u "{list} - Linux"
            cp /home/soders/Configs/spotDL/Foobar-Playlists/config.json /home/soders/.spotdl/config.json
            /home/soders/.local/bin/spotdl-app download $spotify_playlists --m3u "{list} - Foobar"
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "spotDL Liked Songs")
            cp /home/soders/Configs/spotDL/Liked-Songs/config.json /home/soders/.spotdl/config.json
            pip install --upgrade spotdl
            /home/soders/.local/bin/spotdl-app download saved --user-auth
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "spotDL Saved Albums")
            cp /home/soders/Configs/spotDL/Saved-Albums/config.json /home/soders/.spotdl/config.json
            pip install --upgrade spotdl
            /home/soders/.local/bin/spotdl-app download all-user-saved-albums --user-auth
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "spotDL User Playlists")
            pip install --upgrade spotdl
            cd /home/soders/Music/Playlists/
            cp /home/soders/Configs/spotDL/Windows-Playlists/config.json /home/soders/.spotdl/config.json
            /home/soders/.local/bin/spotdl-app download all-user-playlists --user-auth --m3u "{list} - Windows"
            cp /home/soders/Configs/spotDL/Linux-Playlists/config.json /home/soders/.spotdl/config.json
            /home/soders/.local/bin/spotdl-app download all-user-playlists --user-auth --m3u "{list} - Linux"
            cp /home/soders/Configs/spotDL/Foobar-Playlists/config.json /home/soders/.spotdl/config.json
            /home/soders/.local/bin/spotdl-app download all-user-playlists --user-auth --m3u "{list} - Foobar"
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "spotDL Merge URLs")
            export PS3=$'\033[0;32mSelect an option: \e[0m'
            options=("Song" "Album" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Song")
            cp /home/soders/Configs/spotDL/Song/config.json /home/soders/.spotdl/config.json
            read -p "$(echo -e ${RED}"Enter YouTube or Soundcloud URL: "${NC})" cloudtube_link
            read -p "$(echo -e ${GREEN}"Enter Spotify URL: "${NC})" spotify_link
            pip install --upgrade spotdl
            /home/soders/.local/bin/spotdl-app download "$cloudtube_link|$spotify_link"
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            /home/soders/.local/bin/spotdl
            break
            ;;
            "Album")
            cp /home/soders/Configs/spotDL/Album/config.json /home/soders/.spotdl/config.json
            read -p "$(echo -e ${RED}"Enter YouTube or Soundcloud URL: "${NC})" cloudtube_link
            read -p "$(echo -e ${GREEN}"Enter Spotify URL: "${NC})" spotify_link
            pip install --upgrade spotdl
            /home/soders/.local/bin/spotdl-app download "$cloudtube_link|$spotify_link"
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            /home/soders/.local/bin/spotdl
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/spotdl
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "YouTube Song")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-song -U
            /home/soders/.local/bin/ytdlp-song $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "YouTube Album")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-album -U
            /home/soders/.local/bin/ytdlp-album $link
            find /home/soders/Music/Albums/ -mindepth 1 -type d |
            while read empty
            do
            find "$empty" -mindepth 1    -type d | read && continue
            find "$empty" -iname '*.flac' -type f | read && continue
            rm -r "$empty"
            done
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "YouTube Playlist")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-music-playlist -U
            /home/soders/.local/bin/ytdlp-music-playlist $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "YouTube Favorite Playlists")
            /home/soders/.local/bin/ytdlp-music-playlist -U
            /home/soders/.local/bin/ytdlp-music-playlist $youtube_playlists
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Soundcloud Song")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-soundcloud-song -U
            /home/soders/.local/bin/ytdlp-soundcloud-song $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Soundcloud Album")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-soundcloud-album -U
            /home/soders/.local/bin/ytdlp-soundcloud-album $link
            find /home/soders/Music/Albums/ -mindepth 1 -type d |
            while read empty
            do
            find "$empty" -mindepth 1    -type d | read && continue
            find "$empty" -iname '*.flac' -type f | read && continue
            rm -r "$empty"
            done
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Soundcloud Playlist")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            /home/soders/.local/bin/ytdlp-soundcloud-playlist -U
            /home/soders/.local/bin/ytdlp-soundcloud-playlist $link
            /home/soders/Scripts/completion-chime.sh
            sleep 1
            break
            ;;
        "Soundcloud Favorite Playlists")
            /home/soders/.local/bin/ytdlp-soundcloud-playlist -U
            /home/soders/.local/bin/ytdlp-soundcloud-playlist $soundcloud_playlists
            /home/soders/Scripts/completion-chime.sh
            sleep 1
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
            echo -e "${GREEN}Enabling automation.."
            chmod +x "/home/soders/Scripts/spotdl-auto-playlists.sh"
            echo "Enabled" > /home/soders/Configs/spotDL/Automation-Status.txt
            sleep 1
            /home/soders/.local/bin/spotdl
            break
            ;;
            "Disable")
            echo -e "${RED}Disabling automation.."
            chmod -x "/home/soders/Scripts/spotdl-auto-playlists.sh"
            echo "Disabled" > /home/soders/Configs/spotDL/Automation-Status.txt
            sleep 1
            /home/soders/.local/bin/spotdl
            break
            ;;
        "Go Back")
            /home/soders/.local/bin/spotdl
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            break
            ;;
        "Delete Listened Music")
            find "/home/soders/Music/First-Listen" \( -name '*.flac' \)
            echo -e '\033[0;31mPress any key to delete the files.\e[0m'
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            rm -rf /home/soders/Music/First-Listen/*
            echo -e '\033[0;32mFiles deleted.\e[0m'
            break
            fi
            done
            /home/soders/.local/bin/spotdl
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
