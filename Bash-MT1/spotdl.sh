#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

source ~/.env
source ~/Configs/spotDL/.env

automation_status=$(<~/Configs/spotDL/Automation-Status.txt)

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
            cp ~/Configs/spotDL/first-listen.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/spotdl download $link
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "YouTube")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/youtube-first-listen.conf
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Soundcloud")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/soundcloud-first-listen.conf
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
        "Radio")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "spotDL Song")
            cp ~/Configs/spotDL/song.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/spotdl download $link
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "spotDL Album")
            cp ~/Configs/spotDL/album.json ~/.spotdl/config.json
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            ~/.local/bin/spotdl download $link
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "spotDL Playlist")
            read -p "$(echo -e ${GREEN}"Enter URLs: "${NC})" link
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/windows-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download $link --m3u "{list} - Windows"
            cp ~/Configs/spotDL/linux-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download $link --m3u "{list} - Linux"
            cp ~/Configs/spotDL/foobar-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download $link --m3u "{list} - Foobar"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "spotDL Favorite Playlists")
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/windows-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download $spotify_playlists --m3u "{list} - Windows"
            cp ~/Configs/spotDL/linux-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download $spotify_playlists --m3u "{list} - Linux"
            cp ~/Configs/spotDL/foobar-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download $spotify_playlists --m3u "{list} - Foobar"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "spotDL Liked Songs")
            cp ~/Configs/spotDL/liked-songs.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download saved --user-auth
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "spotDL Saved Albums")
            cp ~/Configs/spotDL/saved-albums.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download all-user-saved-albums --user-auth
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "spotDL User Playlists")
            cd ~/Music/Playlists/
            cp ~/Configs/spotDL/windows-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download all-user-playlists --user-auth --m3u "{list} - Windows"
            cp ~/Configs/spotDL/linux-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download all-user-playlists --user-auth --m3u "{list} - Linux"
            cp ~/Configs/spotDL/foobar-playlist.json ~/.spotdl/config.json
            ~/.local/bin/spotdl download all-user-playlists --user-auth --m3u "{list} - Foobar"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "spotDL Merge URLs")
            export PS3=$'\033[0;32mSelect an option: \e[0m'
            options=("Song" "Album" "Go Back")
            select opt in "${options[@]}"
            do
            case $opt in
            "Song")
            cp ~/Configs/spotDL/song.json ~/.spotdl/config.json
            read -p "$(echo -e ${RED}"Enter YouTube or Soundcloud URL: "${NC})" cloudtube_link
            read -p "$(echo -e ${GREEN}"Enter Spotify URL: "${NC})" spotify_link
            ~/.local/bin/spotdl download "$cloudtube_link|$spotify_link"
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
            "Album")
            cp ~/Configs/spotDL/album.json ~/.spotdl/config.json
            read -p "$(echo -e ${RED}"Enter YouTube or Soundcloud URL: "${NC})" cloudtube_link
            read -p "$(echo -e ${GREEN}"Enter Spotify URL: "${NC})" spotify_link
            ~/.local/bin/spotdl download "$cloudtube_link|$spotify_link"
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
        "YouTube Song")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/song.conf
            ~/Scripts/completion-chime.sh && sleep 1
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
            break
            ;;
        "YouTube Playlist")
            read -p "$(echo -e ${RED}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/youtube-music-playlist.conf
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "YouTube Favorite Playlists")
            ~/.local/bin/ytdlp $youtube_playlists --config-locations ~/Configs/YTDLP/youtube-music-playlist.conf
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Soundcloud Song")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/soundcloud-song.conf
            ~/Scripts/completion-chime.sh && sleep 1
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
            break
            ;;
        "Soundcloud Playlist")
            read -p "$(echo -e ${YELLOW}"Enter URLs: "${NC})" link
            ~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/soundcloud-playlist.conf
            ~/Scripts/completion-chime.sh && sleep 1
            break
            ;;
        "Soundcloud Favorite Playlists")
            ~/.local/bin/ytdlp $soundcloud_playlists --config-locations ~/Configs/YTDLP/soundcloud-playlist.conf
            ~/Scripts/completion-chime.sh && sleep 1
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
            chmod +x "~/Scripts/spotdl-auto-playlists.sh"
            echo "Enabled" > ~/Configs/spotDL/Automation-Status.txt
            sleep 1
            ~/Scripts/spotdl.sh
            break
            ;;
            "Disable")
            echo -e "${RED}Disabling automation.."
            chmod -x "~/Scripts/spotdl-auto-playlists.sh"
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
        "Delete Listened Music")
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
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
