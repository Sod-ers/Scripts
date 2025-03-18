#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

printf "\033]0;%s\a" "Backup"

if [ ! -f /mnt/Backups/status.txt ]; then
echo -e "${RED}Backup drive not detected.${NC}"
sleep 3
else

echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣶⣶⣶⣶⣶⣶⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⡿⠟⠛⠋⠉⠉⠉⠉⠙⠛⠻⢿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⢠⣤⣄⠀⠀⣿⣿⠀⠀⣠⣤⡀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣷⣄⣿⣿⣠⣾⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⣾⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣿⣶⣦⣤⣀⣀⣀⣀⣀⣀⣤⣴⣶⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠻⠿⠿⠿⠿⠿⠿⠟⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("MT1/Windows" "Sync" "Desktop" "Projects" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Desktop")
if [ ! -f /mnt/Portable-Backup/status.txt ]; then
echo -e "${RED}USB not detected.${NC}"
sleep 3
else
echo -e "${YELLOW}WARNING! About to begin backup.${NC}" && sleep 3
echo -e "${RED}Press any key to proceed.${NC}"
while true; do
read -rsn1 key
if [[ -n "$key" ]]; then
mkdir /mnt/Portable-Backup/Desktop/
mkdir /mnt/Portable-Backup/Desktop/MT1/
mkdir /mnt/Backups/Desktop/
mkdir /mnt/Backups/Desktop/MT1/
rsync -r --progress --delete ~/Desktop/ /mnt/Portable-Backup/Desktop/MT1/
rsync -r --progress --delete ~/Desktop/ /mnt/Backups/Desktop/MT1/
break
fi
done
echo -e "${GREEN}Backup completed!${NC}" && sleep 3
fi
            break
            ;;
        "MT1/Windows")
if [ ! -f /mnt/Portable-Backup/status.txt ]; then
echo -e "${RED}USB not detected.${NC}"
sleep 3
else
echo -e "${YELLOW}WARNING! About to begin backup.${NC}" && sleep 3
echo -e "${RED}Press any key to proceed.${NC}"
while true; do
read -rsn1 key
if [[ -n "$key" ]]; then

mkdir /mnt/Backups/Linux/
mkdir /mnt/Backups/Linux/MT1/
mkdir /mnt/Backups/Windows/
mkdir /mnt/Backups/Misc/

mkdir /mnt/Backups/Linux/MT1/WinRAR/
mkdir /mnt/Backups/Windows/WinRAR/
mkdir /mnt/Backups/Linux/MT1/Firewall/
mkdir /mnt/Backups/Linux/MT1/System-Reports/
touch /mnt/Backups/Linux/MT1/System-Reports/System-Information.txt
mkdir /mnt/Backups/Linux/MT1/Radarr/
mkdir /mnt/Backups/Linux/MT1/Sonarr/
mkdir /mnt/Backups/Linux/MT1/Prowlarr/
mkdir /mnt/Backups/Linux/MT1/Readarr/
mkdir /mnt/Backups/Linux/MT1/Lidarr/
mkdir /mnt/Backups/Linux/MT1/Cavasik/
touch /mnt/Backups/Linux/MT1/crontabs.txt
mkdir /mnt/Backups/Linux/MT1/Browser-Bookmarks/
mkdir /mnt/Backups/Linux/MT1/Dark-Reader/
mkdir /mnt/Backups/Linux/MT1/Tabliss/
mkdir /mnt/Backups/Linux/MT1/Stylus/
mkdir /mnt/Backups/Misc/Retro-Arch/
mkdir /mnt/Backups/Misc/Retro-Arch/AppleTV/
mkdir /mnt/Backups/Misc/Bitwarden/
mkdir /mnt/Backups/Misc/Google-Takeout/
mkdir /mnt/Backups/Linux/MT1/Foobar2000/

# Whisker Menu programs
mkdir /mnt/Backups/Linux/MT1/Whisker-Menu/
rsync -r --progress --delete ~/.local/share/applications /mnt/Backups/Linux/MT1/Whisker-Menu/

# GitHub
mkdir /mnt/Backups/Linux/MT1/GitHub/
rsync --progress ~/.gitconfig /mnt/Backups/Linux/MT1/GitHub/

# Nvidia
mkdir /mnt/Backups/Linux/MT1/Nvidia/
rsync --progress ~/.nvidia-settings-rc /mnt/Backups/Linux/MT1/Nvidia/

# ConvertAll
mkdir /mnt/Backups/Linux/MT1/ConvertAll/
rsync --progress ~/.convertall /mnt/Backups/Linux/MT1/ConvertAll/

# Desktop
# mkdir /mnt/Backups/Desktop/
# mkdir /mnt/Backups/Desktop/MT1/
# rsync -r --progress --delete ~/Desktop/ /mnt/Backups/Desktop/MT1/

# Pictures
mkdir /mnt/Backups/Linux/MT1/Pictures/
mkdir /mnt/Backups/Linux/MT1/Pictures/Steam/
mkdir /mnt/Backups/Windows/Pictures/
rsync -r --progress --ignore-existing ~/Pictures/Cats /mnt/Backups/Linux/MT1/Pictures/
rsync -r --progress --ignore-existing ~/Pictures/Groceries /mnt/Backups/Linux/MT1/Pictures/
rsync -r --progress ~/Pictures/Groceries/Grocery-List.bee /mnt/Backups/Linux/MT1/Pictures/Groceries/
rsync -r --progress ~/Pictures/Groceries/Grocery-List.png /mnt/Backups/Linux/MT1/Pictures/Groceries/
rsync -r --progress --ignore-existing ~/Pictures/Jellyfin-Thumbnails /mnt/Backups/Linux/MT1/Pictures/
rsync -r --progress --ignore-existing ~/Pictures/Misc /mnt/Backups/Linux/MT1/Pictures/
rsync -r --progress --ignore-existing ~/Pictures/Profile-Pictures /mnt/Backups/Linux/MT1/Pictures/
rsync -r --progress --ignore-existing ~/Pictures/Screenshots /mnt/Backups/Linux/MT1/Pictures/
rsync -r --progress --ignore-existing "/home/soders/Pictures/Screenshots/Steam Screenshots/4000" /mnt/Backups/Linux/MT1/Pictures/Steam/
rsync -r --progress --ignore-existing "/home/soders/Pictures/Screenshots/Steam Screenshots/1353230" /mnt/Backups/Linux/MT1/Pictures/Steam/
rsync -r --progress --ignore-existing "/home/soders/Pictures/Screenshots/Steam Screenshots/11677091221058336806" /mnt/Backups/Linux/MT1/Pictures/Steam/
rsync -r --progress --ignore-existing ~/Pictures/SteamGridDB /mnt/Backups/Linux/MT1/Pictures/
rsync -r --progress ~/Pictures/Wallpapers /mnt/Backups/Linux/MT1/Pictures/
rsync --progress ~/Pictures/digikam4.db /mnt/Backups/Linux/MT1/Pictures/
rsync --progress ~/Pictures/recognition.db /mnt/Backups/Linux/MT1/Pictures/
rsync --progress ~/Pictures/similarity.db /mnt/Backups/Linux/MT1/Pictures/
rsync --progress ~/Pictures/thumbnails-digikam.db /mnt/Backups/Linux/MT1/Pictures/
rsync -r --progress --ignore-existing ~/.icons /mnt/Backups/Linux/MT1/Pictures/
rsync -r --progress --ignore-existing /mnt/WIN1/Users/Soders/Icons /mnt/Backups/Windows/Pictures/
rsync -r --progress --ignore-existing /media/soders/2TBNTFS/Pictures/Screenshots /mnt/Backups/Windows/Pictures/
rsync -r --progress --ignore-existing /media/soders/2TBNTFS/Pictures/Wallpapers /mnt/Backups/Windows/Pictures/

# Videos
mkdir /mnt/Backups/Misc/Videos/
mkdir /mnt/Backups/Videos/
mkdir /mnt/Backups/Linux/MT1/Videos/
rsync -r --progress --ignore-existing --delete ~/Videos/Twitch /mnt/Backups/Videos/
rsync -r --progress --ignore-existing --delete ~/Videos/Music /mnt/Backups/Videos/
rsync -r --progress ~/Videos/Playlists /mnt/Backups/Linux/MT1/Videos/

# Documents
mkdir /mnt/Backups/Linux/MT1/Documents/
mkdir /mnt/Backups/Windows/Documents/
rsync -r --progress ~/Documents/Spreadsheets /mnt/Backups/Linux/MT1/Documents/
rsync -r --progress --ignore-existing ~/Documents/PDFs /mnt/Backups/Linux/MT1/Documents/
rsync -r --progress ~/Documents/Notes /mnt/Backups/Linux/MT1/Documents/
rsync -r --progress ~/Documents/LunaSea /mnt/Backups/Linux/MT1/Documents/
rsync -r --progress ~/Documents/Configs /mnt/Backups/Linux/MT1/Documents/
# rsync -r --progress --ignore-existing ~/Documents/Books /mnt/Backups/Linux/MT1/Documents/
rsync -r --progress --ignore-existing /media/soders/2TBNTFS/Documents/Notes /mnt/Backups/Windows/Documents/
rsync -r --progress --ignore-existing /media/soders/2TBNTFS/Documents/PDFs /mnt/Backups/Windows/Documents/
rsync -r --progress --ignore-existing /media/soders/2TBNTFS/Documents/Spreadsheets /mnt/Backups/Windows/Documents/

# Memes
mkdir /mnt/Backups/Misc/Memes/
rsync -r --progress --ignore-existing --delete ~/Memes/ /mnt/Backups/Misc/Memes/
rsync -r --progress --ignore-existing --delete ~/Memes/ /media/soders/2TBNTFS/Memes/

# Samples
mkdir /mnt/Backups/Linux/MT1/Samples/
mkdir /mnt/Backups/Windows/Samples/
rsync -r --progress ~/Samples/ /mnt/Backups/Linux/MT1/Samples/
rsync -r --progress /media/soders/2TBNTFS/Samples/ /mnt/Backups/Windows/Samples/

# Scripts
mkdir /mnt/Backups/Linux/MT1/Scripts/
mkdir /mnt/Backups/Windows/Scripts/
rsync -r --progress ~/Scripts/ /mnt/Backups/Linux/MT1/Scripts/
rsync -r --progress /media/soders/2TBNTFS/Scripts/ /mnt/Backups/Windows/Scripts/

# Opt scripts
mkdir /mnt/Backups/Linux/MT1/opt/
rsync -r --progress /opt/Scripts /mnt/Backups/Linux/MT1/opt/

# Templates
mkdir /mnt/Backups/Linux/MT1/Templates/
mkdir /mnt/Backups/Windows/Templates/
rsync -r --progress ~/Templates/ /mnt/Backups/Linux/MT1/Templates/
rsync -r --progress /media/soders/2TBNTFS/Documents/Templates/ /mnt/Backups/Windows/Templates/

# Nextcloud
mkdir /mnt/Backups/Misc/Nextcloud/
rsync -r --progress ~/Nextcloud/Notes/Notes /mnt/Backups/Misc/Nextcloud/
rsync -r --progress ~/Nextcloud/Notes/Documents /mnt/Backups/Misc/Nextcloud/
rsync --progress ~/Nextcloud/Project-Planner/Project-Planner.md /mnt/Backups/Misc/Nextcloud/
rsync --progress ~/Nextcloud/Weekly-Planner/Weekly-Planner.md /mnt/Backups/Misc/Nextcloud/
rsync -r --progress ~/Nextcloud/Arch /mnt/Backups/Misc/Nextcloud/

# GMOD
mkdir /mnt/Backups/Linux/MT1/GMod/
mkdir /mnt/Backups/Windows/GMod/
mkdir /mnt/Backups/Windows/GMod/BB/
rsync --progress ~/Configs/GMod/BB/mvp.cfg /mnt/Backups/Linux/MT1/GMod/
rsync -r --progress ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg /mnt/Backups/Linux/MT1/GMod/
rsync -r --progress "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/GarrysMod/garrysmod/cfg" /mnt/Backups/Windows/GMod/
rsync -r --progress /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/data/bb_servers/outfits /mnt/Backups/Linux/MT1/GMod/BB/

# Open Fortress
mkdir /mnt/Backups/Linux/MT1/Open-Fortress/
mkdir /mnt/Backups/Windows/Open-Fortress/
rsync -r --progress ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg /mnt/Backups/Linux/MT1/Open-Fortress/
rsync -r --progress "/mnt/WIN1/Program Files (x86)/Steam/steamapps/sourcemods/open_fortress/cfg" /mnt/Backups/Windows/Open-Fortress/

# HL2DM
mkdir /mnt/Backups/Windows/HL2DM/
rsync -r --progress "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg" /mnt/Backups/Windows/HL2DM/

# Factorio
rsync -r --progress ~/.factorio /mnt/Backups/Linux/MT1/

# Terraria
rsync -r --progress ~/.local/share/Terraria /mnt/Backups/Linux/MT1/

# Steam
mkdir /mnt/Backups/Linux/MT1/Steam/
mkdir /mnt/Backups/Windows/Steam/
rsync --progress ~/.steam/steam/config/config.vdf /mnt/Backups/Linux/MT1/Steam/
rsync --progress ~/.steam/steam/userdata/158642257/config/localconfig.vdf /mnt/Backups/Linux/MT1/Steam/
rsync --progress ~/.steam/steam/userdata/158642257/7/remote/sharedconfig.vdf /mnt/Backups/Linux/MT1/Steam/
rsync --progress ~/.steam/steam/userdata/158642257/7/remote/serverbrowser_hist.vdf /mnt/Backups/Linux/MT1/Steam/
rsync --progress "/mnt/WIN1/Program Files (x86)/Steam/config/config.vdf" /mnt/Backups/Windows/Steam/
rsync --progress "/mnt/WIN1/Program Files (x86)/Steam/userdata/158642257/config/localconfig.vdf" /mnt/Backups/Windows/Steam/
rsync --progress "/mnt/WIN1/Program Files (x86)/Steam/userdata/158642257/7/remote/sharedconfig.vdf" /mnt/Backups/Windows/Steam/
rsync --progress "/mnt/WIN1/Program Files (x86)/Steam/userdata/158642257/7/remote/serverbrowser_hist.vdf" /mnt/Backups/Windows/Steam/

# GIMP
mkdir /mnt/Backups/Linux/MT1/GIMP/
rsync -r --progress ~/.config/GIMP/3.0/themes /mnt/Backups/Linux/MT1/GIMP/
rsync --progress ~/.config/GIMP/3.0/gimprc /mnt/Backups/Linux/MT1/GIMP/
rsync --progress ~/.config/GIMP/3.0/toolrc /mnt/Backups/Linux/MT1/GIMP/

# SFP
mkdir /mnt/Backups/Linux/MT1/SFP/
mkdir /mnt/Backups/Windows/SFP/
rsync --progress ~/Programs/SFP/SFP.config /mnt/Backups/Linux/MT1/SFP/
rsync --progress /mnt/WIN1/Programs/SFPUI/SFP.config /mnt/Backups/Windows/SFP/

# Steam Metro theme
rsync -r --progress ~/.steam/steam/steamui/skins/MetroSteam /mnt/Backups/Linux/MT1/
rsync -r --progress "/mnt/WIN1/Program Files (x86)/Steam/steamui/skins/MetroSteam" /mnt/Backups/Windows/

# System Sounds
mkdir /mnt/Backups/Windows/System-Sounds/
rsync -r --progress ~/.local/share/sounds /mnt/Backups/Linux/MT1/
rsync -r --progress /mnt/WIN1/Windows/Media/MacOS /mnt/Backups/Windows/System-Sounds/
rsync -r --progress "/mnt/WIN1/Windows/Media/Aura II" /mnt/Backups/Windows/System-Sounds/

# Redshift
rsync -r --progress ~/Configs/Redshift /mnt/Backups/Linux/MT1/

# XScreenSaver
rsync -r --progress ~/Configs/XScreenSaver /mnt/Backups/Linux/MT1/

# YTDLP
rsync -r --progress ~/Configs/YTDLP /mnt/Backups/Linux/MT1/

# qView
mkdir /mnt/Backups/Linux/MT1/qView/
rsync --progress ~/.var/app/com.interversehq.qView/config/qView/qView.conf /mnt/Backups/Linux/MT1/qView/

# VLC
mkdir /mnt/Backups/Linux/MT1/VLC/
mkdir /mnt/Backups/Linux/MT1/VLC/flatpak/
mkdir /mnt/Backups/Windows/VLC/
rsync --progress ~/.config/vlc/vlcrc /mnt/Backups/Linux/MT1/VLC/
rsync --progress ~/.config/vlc/vlc-qt-interface.conf /mnt/Backups/Linux/MT1/VLC/
rsync --progress "/mnt/WIN1/Users/Soders/Application Data/vlc/vlcrc" /mnt/Backups/Windows/VLC/
rsync --progress "/mnt/WIN1/Users/Soders/Application Data/vlc/vlc-qt-interface.conf" /mnt/Backups/Windows/VLC/
rsync --progress ~/Programs/VLC/Skins/HindDracula.vlt /mnt/Backups/Misc/VLC/
rsync --progress ~/.var/app/org.videolan.VLC/config/vlc/vlcrc /mnt/Backups/Linux/MT1/VLC/flatpak/
rsync --progress ~/.var/app/org.videolan.VLC/config/vlc/vlc-qt-interface.conf /mnt/Backups/Linux/MT1/VLC/flatpak/

# spotDL
rsync -r --progress ~/Configs/spotDL  /mnt/Backups/Linux/MT1/

# Spicetify
rsync -r --progress ~/.config/spicetify /mnt/Backups/Linux/MT1/
rsync -r --progress /mnt/WIN1/Users/Soders/AppData/Roaming/spicetify /mnt/Backups/Windows/

# Spotify
mkdir /mnt/Backups/Windows/Spotify/
rsync -r --progress ~/.var/app/com.spotify.Client/config/spotify /mnt/Backups/Linux/MT1/
rsync -r --progress /mnt/WIN1/Users/Soders/AppData/Roaming/Spotify/Users /mnt/Backups/Windows/Spotify/
rsync --progress/mnt/WIN1/Users/Soders/AppData/Roaming/Spotify/prefs /mnt/Backups/Windows/Spotify/

# GTK
rsync -r --progress ~/.config/gtk-3.0 /mnt/Backups/Linux/MT1/

# Deckmaster
rsync -r --progress ~/Programs/Deckmaster /mnt/Backups/Linux/MT1/

# MP3tag
mkdir /mnt/Backups/Linux/MT1/MP3tag
mkdir /mnt/Backups/Windows/MP3tag
rsync -r --progress ~/Programs/MP3tag/export /mnt/Backups/Linux/MT1/MP3tag
rsync --progress ~/Programs/MP3tag/Mp3tagSettings.zip /mnt/Backups/Linux/MT1/MP3tag
rsync -r --progress /media/soders/2TBNTFS/Programs/MP3tag/export /mnt/Backups/Windows/MP3tag
rsync --progress /media/soders/2TBNTFS/Programs/MP3tag/Mp3tagSettings.zip /mnt/Backups/Windows/MP3tag
rsync --progress /media/soders/2TBNTFS/Programs/MP3tag/mp3tag.cfg /mnt/Backups/Windows/MP3tag

# OpenRGB
mkdir /mnt/Backups/Linux/MT1/OpenRGB/
mkdir /mnt/Backups/Windows/OpenRGB/
rsync --progress ~/.var/app/org.openrgb.OpenRGB/config/OpenRGB/Dracula.orp /mnt/Backups/Linux/MT1/OpenRGB
rsync --progress ~/.var/app/org.openrgb.OpenRGB/config/OpenRGB/Night-Shift.orp /mnt/Backups/Linux/MT1/OpenRGB
rsync --progress ~/.var/app/org.openrgb.OpenRGB/config/OpenRGB/Off.orp /mnt/Backups/Linux/MT1/OpenRGB
rsync --progress ~/.var/app/org.openrgb.OpenRGB/config/OpenRGB/Waves.orp /mnt/Backups/Linux/MT1/OpenRGB
rsync --progress ~/.var/app/org.openrgb.OpenRGB/config/OpenRGB/OpenRGB.json /mnt/Backups/Linux/MT1/OpenRGB
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/OpenRGB/Dracula.orp /mnt/Backups/Windows/OpenRGB/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/OpenRGB/env.cmd /mnt/Backups/Windows/OpenRGB/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/OpenRGB/env-summer.cmd /mnt/Backups/Windows/OpenRGB/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/OpenRGB/env-winter.cmd /mnt/Backups/Windows/OpenRGB/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/OpenRGB/Night-Shift.orp /mnt/Backups/Windows/OpenRGB/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/OpenRGB/OpenRGB.json /mnt/Backups/Windows/OpenRGB/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/OpenRGB/Waves.orp /mnt/Backups/Windows/OpenRGB/

# StreamController
mkdir /mnt/Backups/Linux/MT1/StreamController/
rsync -r --progress ~/.var/app/com.core447.StreamController/data/settings /mnt/Backups/Linux/MT1/StreamController/

# Input Remapper
rsync -r --progress ~/.config/input-remapper-2 /mnt/Backups/Linux/MT1/

# btop
rsync -r --progress ~/.config/btop /mnt/Backups/Linux/MT1/

# Foobar2000
rsync -r --progress "/mnt/WIN1/Users/Soders/Programs/Foobar2000 Data" /mnt/Backups/Windows/

# Fooyin
mkdir /mnt/Backups/Linux/MT1/fooyin/
rsync -r --progress ~/.config/fooyin/layouts /mnt/Backups/Linux/MT1/fooyin/

# Feishin
mkdir /mnt/Backups/Linux/MT1/Feishin/
mkdir /mnt/Backups/Windows/Feishin/
rsync --progress ~/.config/feishin/config.json /mnt/Backups/Linux/MT1/Feishin/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/feishin/config.json /mnt/Backups/Windows/Feishin/

# FreeTube
mkdir /mnt/Backups/Linux/MT1/FreeTube/
mkdir /mnt/Backups/Linux/MT1/FreeTube/flatpak/
mkdir /mnt/Backups/Windows/FreeTube/
rsync --progress ~/.config/FreeTube/profiles.db /mnt/Backups/Linux/MT1/FreeTube/
rsync --progress ~/.config/FreeTube/settings.db /mnt/Backups/Linux/MT1/FreeTube/
rsync --progress ~/.config/FreeTube/playlists.db /mnt/Backups/Linux/MT1/FreeTube/
rsync --progress ~/.config/FreeTube/history.db /mnt/Backups/Linux/MT1/FreeTube/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/FreeTube/profiles.db /mnt/Backups/Windows/FreeTube/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/FreeTube/settings.db /mnt/Backups/Windows/FreeTube/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/FreeTube/playlists.db /mnt/Backups/Windows/FreeTube/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/FreeTube/history.db /mnt/Backups/Windows/FreeTube/
rsync --progress ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/profiles.db /mnt/Backups/Linux/MT1/FreeTube/flatpak/
rsync --progress ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/settings.db /mnt/Backups/Linux/MT1/FreeTube/flatpak/
rsync --progress ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/playlists.db /mnt/Backups/Linux/MT1/FreeTube/flatpak/
rsync --progress ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/history.db /mnt/Backups/Linux/MT1/FreeTube/flatpak/

# mkchromecast
mkdir /mnt/Backups/Linux/MT1/mkchromecast/
rsync --progress ~/.config/mkchromecast/mkchromecast.cfg /mnt/Backups/Linux/MT1/mkchromecast/

# Mullvad
mkdir /mnt/Backups/Linux/MT1/Mullvad-VPN/
mkdir /mnt/Backups/Windows/Mullvad-VPN/
rsync --progress "/home/soders/.config/Mullvad VPN/gui_settings.json" /mnt/Backups/Linux/MT1/Mullvad-VPN/
rsync --progress "/mnt/WIN1/Users/Soders/AppData/Local/Mullvad VPN/gui_settings.json" /mnt/Backups/Windows/Mullvad-VPN/

# Recyclarr
mkdir /mnt/Backups/Linux/MT1/Recyclarr/
rsync --progress ~/.config/recyclarr/recyclarr.yml /mnt/Backups/Linux/MT1/Recyclarr/

# Simplify 3D
mkdir /mnt/Backups/Linux/MT1/Simplify-3D/
mkdir /mnt/Backups/Linux/MT1/Simplify-3D/Profiles/
mkdir /mnt/Backups/Windows/Simplify-3D/
rsync --progress ~/.config/Simplify3D/S3D-Software.conf /mnt/Backups/Linux/MT1/Simplify-3D/
rsync --progress --ignore-existing /opt/Simplify3D-4.1.2/DarkMode.qss /mnt/Backups/Linux/MT1/Simplify-3D/
rsync --progress --ignore-existing "/opt/Simplify3D-4.1.2/Ender 3 Pro Machine Model.stl" /mnt/Backups/Linux/MT1/Simplify-3D/
rsync -r --progress /mnt/WIN1/Users/Soders/AppData/Local/Simplify3D/S3D-Software /mnt/Backups/Windows/Simplify-3D/

# 3D Printing
mkdir /mnt/Backups/Misc/3D-Printing/
rsync -r --progress --ignore-existing ~/3D-Printing/ /mnt/Backups/Misc/3D-Printing/

# sqlitebrowser
mkdir /mnt/Backups/Linux/MT1/sqlitebrowser/
rsync --progress ~/.config/sqlitebrowser/sqlitebrowser.conf /mnt/Backups/Linux/MT1/sqlitebrowser/

# F5TTS
mkdir /mnt/Backups/Linux/MT1/F5TTS/
rsync --progress ~/Programs/F5TTS/.env /mnt/Backups/Linux/MT1/F5TTS/

# XFCE
mkdir /mnt/Backups/Linux/MT1/.local/
mkdir /mnt/Backups/Linux/MT1/.local/share/
rsync -r --progress ~/.config/xfce4 /mnt/Backups/Linux/MT1/
rsync -r --progress ~/.config/xfce4-dict /mnt/Backups/Linux/MT1/
rsync -r --progress ~/.local/share/xfce4 /mnt/Backups/Linux/MT1/.local/share/

# Keyrings
rsync -r --progress ~/.local/share/keyrings /mnt/Backups/Linux/MT1/

# dconf database
mkdir /mnt/Backups/Linux/MT1/dconf/
rsync --progress ~/.config/dconf/user /mnt/Backups/Linux/MT1/dconf/

# Startup programs
rsync -r --progress ~/.config/autostart /mnt/Backups/Linux/MT1/

# Sticky notes
mkdir /mnt/Backups/Linux/MT1/.local/
mkdir /mnt/Backups/Linux/MT1/.local/share/
rsync -r --progress ~/.local/share/notes /mnt/Backups/Linux/MT1/.local/share/

# Hammer++
rsync -r --progress ~/Programs/Hammer++ /mnt/Backups/Linux/MT1/

# Mod Organizer 2
rsync -r --progress ~/Programs/Mod-Organizer-2 /mnt/Backups/Linux/MT1/

# Notepad++
mkdir /mnt/Backups/Linux/MT1/Notepad++/
mkdir /mnt/Backups/Windows/Notepad++/
rsync --progress ~/Programs/Notepad++/config.xml /mnt/Backups/Linux/MT1/Notepad++/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/Notepad++/config.xml /mnt/Backups/Windows/Notepad++/

# Chatterino
mkdir /mnt/Backups/Linux/MT1/Chatterino/
rsync --progress ~/.local/share/chatterino/Settings/settings.json /mnt/Backups/Linux/MT1/Chatterino/

# Jellyfin
mkdir /mnt/Backups/Linux/MT1/Jellyfin/
mkdir /mnt/Backups/Linux/MT1/Jellyfin/var/
mkdir /mnt/Backups/Linux/MT1/Jellyfin/var/lib/
mkdir /mnt/Backups/Linux/MT1/Jellyfin/etc/
rsync -r --progress /var/lib/jellyfin /mnt/Backups/Linux/MT1/Jellyfin/var/lib/
rsync -r --progress /etc/jellyfin /mnt/Backups/Linux/MT1/Jellyfin/etc/

# Jellyfin Media Player
mkdir /mnt/Backups/Linux/MT1/jellyfinmediaplayer/
mkdir /mnt/Backups/Linux/MT1/jellyfinmediaplayer/flatpak/
mkdir /mnt/Backups/Windows/jellyfinmediaplayer/
rsync --progress ~/.local/share/jellyfinmediaplayer/jellyfinmediaplayer.conf /mnt/Backups/Linux/MT1/jellyfinmediaplayer/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Local/JellyfinMediaPlayer/jellyfinmediaplayer.conf /mnt/Backups/Linux/MT1/jellyfinmediaplayer/
rsync --progress "/home/soders/.var/app/com.github.iwalton3.jellyfin-media-player/config/jellyfin.org/Jellyfin Media Player.conf" /mnt/Backups/Linux/MT1/jellyfinmediaplayer/flatpak/

# Jellyseerr
mkdir /mnt/Backups/Linux/MT1/jellyseerr/
rsync --progress /etc/jellyseerr/jellyseerr.conf /mnt/Backups/Linux/MT1/jellyseerr/
rsync --progress /opt/jellyseerr/config/settings.json /mnt/Backups/Linux/MT1/jellyseerr/

# Digikam
mkdir /mnt/Backups/Linux/MT1/digiKam/
rsync --progress ~/.var/app/org.kde.digikam/config/digikamrc /mnt/Backups/Linux/MT1/digiKam/
rsync --progress ~/.var/app/org.kde.digikam/config/digikam_systemrc /mnt/Backups/Linux/MT1/digiKam/

# local bin
rsync -r --progress --ignore-existing ~/.local/bin /mnt/Backups/Linux/MT1/

# Xed
mkdir /mnt/Backups/Linux/MT1/xed/
touch /mnt/Backups/Linux/MT1/xed/preferences.txt
rsync --progress --ignore-existing ~/.local/share/xed/styles/bohemian.xml /mnt/Backups/Linux/MT1/xed/
dconf dump /org/x/editor/preferences/ > /mnt/Backups/Linux/MT1/xed/preferences.txt

# SSH
rsync -r --progress --ignore-existing ~/.ssh /mnt/Backups/Linux/MT1/

# Bash Aliases
rsync --progress ~/.bash_aliases /mnt/Backups/Linux/MT1/

# Bash History
rsync --progress ~/.bash_history /mnt/Backups/Linux/MT1/

# Bashrc
rsync --progress ~/.bashrc /mnt/Backups/Linux/MT1/

# lightdm
rsync -r --progress /etc/lightdm /mnt/Backups/Linux/MT1/

# udev rules
rsync -r --progress /etc/udev /mnt/Backups/Linux/MT1/

# systemd
mkdir /mnt/Backups/Linux/MT1/systemd/
rsync -r --progress /etc/systemd/system /mnt/Backups/Linux/MT1/systemd/

# Calendar
rsync -r --progress /etc/calendar /mnt/Backups/Linux/MT1/

# PKG list
mkdir /mnt/Backups/Linux/MT1/Packages/
touch /mnt/Backups/Linux/MT1/Packages/Snap.txt
touch /mnt/Backups/Linux/MT1/Packages/Flatpak.txt
rsync -r --progress ~/Documents/Backups /mnt/Backups/Linux/MT1/Packages/
snap list > /mnt/Backups/Linux/MT1/Packages/Snap.txt
flatpak list > /mnt/Backups/Linux/MT1/Packages/Flatpak.txt

# Winget
rsync -r --progress /media/soders/2TBNTFS/Documents/Winget /mnt/Backups/Windows/

# Cavalier
mkdir /mnt/Backups/Linux/MT1/Cavalier/
rsync --progress "/home/soders/.var/app/org.nickvision.cavalier/config/Nickvision Cavalier/cava_config" /mnt/Backups/Linux/MT1/Cavalier/
rsync --progress "/home/soders/.var/app/org.nickvision.cavalier/config/Nickvision Cavalier/config.json" /mnt/Backups/Linux/MT1/Cavalier/

# Filezilla
rsync -r --progress ~/.var/app/org.filezillaproject.Filezilla/config/filezilla /mnt/Backups/Linux/MT1/

# Flameshot
mkdir /mnt/Backups/Linux/MT1/Flameshot/
mkdir /mnt/Backups/Windows/Flameshot/
rsync --progress ~/.config/flameshot/flameshot.ini /mnt/Backups/Linux/MT1/Flameshot/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/flameshot/flameshot.ini /mnt/Backups/Windows/Flameshot/

# Kdenlive
mkdir /mnt/Backups/Linux/MT1/Kdenlive/
rsync --progress ~/.var/app/org.kde.kdenlive/config/kdeglobals /mnt/Backups/Linux/MT1/Kdenlive/
rsync --progress ~/.var/app/org.kde.kdenlive/config/kdenlive-flatpakrc /mnt/Backups/Linux/MT1/Kdenlive/

# KShutdown
mkdir /mnt/Backups/Linux/MT1/KShutdown/
mkdir /mnt/Backups/Windows/KShutdown/
rsync --progress ~/.config/kshutdownrc /mnt/Backups/Linux/MT1/KShutdown/
rsync --progress /media/soders/2TBNTFS/Programs/KShutdown/kshutdown.ini /mnt/Backups/Windows/KShutdown/

# LocalSend
mkdir /mnt/Backups/Linux/MT1/LocalSend/
mkdir /mnt/Backups/Windows/LocalSend/
rsync --progress ~/.var/app/org.localsend.localsend_app/data/localsend_app/shared_preferences.json /mnt/Backups/Linux/MT1/LocalSend/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/LocalSend/settings.json /mnt/Backups/Windows/LocalSend/

# PolyMC
mkdir /mnt/Backups/Linux/MT1/PolyMC/
rsync --progress ~/.var/app/org.polymc.PolyMC/data/PolyMC/accounts.json /mnt/Backups/Linux/MT1/PolyMC/
rsync --progress ~/.var/app/org.polymc.PolyMC/data/PolyMC/polymc.cfg /mnt/Backups/Linux/MT1/PolyMC/

# OBS Studio
mkdir /mnt/Backups/Linux/MT1/OBS/
mkdir /mnt/Backups/Windows/OBS/
rsync -r --progress ~/.var/app/com.obsproject.Studio/config/obs-studio/themes /mnt/Backups/Linux/MT1/OBS/
rsync -r --progress ~/.var/app/com.obsproject.Studio/config/obs-studio/basic/profiles /mnt/Backups/Linux/MT1/OBS/
rsync -r --progress ~/.var/app/com.obsproject.Studio/config/obs-studio/basic/scenes /mnt/Backups/Linux/MT1/OBS/
rsync --progress ~/.var/app/com.obsproject.Studio/config/obs-studio/global.ini /mnt/Backups/Linux/MT1/OBS/
rsync -r --progress /mnt/WIN1/Users/Soders/AppData/Roaming/obs-studio /mnt/Backups/Windows/OBS/

# Virt-manager
rsync -r --progress ~/Programs/Virtual-Machine-Manager /mnt/Backups/Linux/MT1/

# Virt-viewer
mkdir /mnt/Backups/Linux/MT1/virt-viewer/
rsync --progress ~/.config/virt-viewer/settings /mnt/Backups/Linux/MT1/virt-viewer/

# Retroarch
mkdir /mnt/Backups/Linux/MT1/retroarch/
rsync --progress ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg /mnt/Backups/Linux/MT1/retroarch/

# Slimbook battery
mkdir /mnt/Backups/Linux/MT1/slimbookbattery/
rsync --progress ~/.config/slimbookbattery/slimbookbattery.conf /mnt/Backups/Linux/MT1/slimbookbattery/

# Usermode FTP Server
rsync -r --progress ~/.var/app/eu.ithz.umftpd/config/umftpd /mnt/Backups/Linux/MT1/

# Music
mkdir /mnt/Backups/Music/
mkdir /mnt/Backups/Misc/Music/
rsync -r --progress --ignore-existing --delete ~/Music/Songs /mnt/Backups/Music/
rsync -r --progress --ignore-existing --delete ~/Music/Albums /mnt/Backups/Music/
# rsync -r --progress --ignore-existing --delete ~/Music/Spotify /mnt/Backups/Music/
rsync -r --progress --delete ~/Music/Playlists /mnt/Backups/Misc/Music/
rsync -r --progress --ignore-existing "/home/soders/Music/External Tags" /mnt/Backups/Misc/Music/

# Obsidian
mkdir /mnt/Backups/Linux/MT1/Obsidian/
mkdir /mnt/Backups/Linux/MT1/Obsidian/Notes/
mkdir /mnt/Backups/Linux/MT1/Obsidian/Arch/
mkdir /mnt/Backups/Linux/MT1/Obsidian/Project-Planner/
mkdir /mnt/Backups/Linux/MT1/Obsidian/Weekly-Planner/
rsync -r --progress --delete ~/Nextcloud/Notes/.obsidian /mnt/Backups/Linux/MT1/Obsidian/Notes/
rsync -r --progress --delete ~/Nextcloud/Arch/.obsidian /mnt/Backups/Linux/MT1/Obsidian/Arch/
rsync -r --progress --delete ~/Nextcloud/Project-Planner/.obsidian /mnt/Backups/Linux/MT1/Obsidian/Project-Planner/
rsync -r --progress --delete ~/Nextcloud/Weekly-Planner/.obsidian /mnt/Backups/Linux/MT1/Obsidian/Weekly-Planner/

# Libre Office
rsync -r --progress ~/.config/libreoffice /mnt/Backups/Linux/MT1/
rsync -r --progress /mnt/WIN1/Users/Soders/AppData/Roaming/LibreOffice /mnt/Backups/Windows/

# Tdarr
mkdir /mnt/Backups/Linux/MT1/Tdarr/
rsync -r --progress ~/Programs/Tdarr/configs /mnt/Backups/Linux/MT1/Tdarr/

# Tenacity
mkdir /mnt/Backups/Linux/MT1/Tenacity/
rsync --progress ~/.var/app/org.tenacityaudio.Tenacity/config/pluginsettings.cfg /mnt/Backups/Linux/MT1/Tenacity/
rsync --progress ~/.var/app/org.tenacityaudio.Tenacity/config/tenacity.cfg /mnt/Backups/Linux/MT1/Tenacity/

# Discord
mkdir /mnt/Backups/Linux/MT1/Discord/
mkdir /mnt/Backups/Windows/Discord/
rsync --progress ~/.var/app/com.discordapp.Discord/config/discord/settings.json /mnt/Backups/Linux/MT1/Discord/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/discord/settings.json /mnt/Backups/Windows/Discord/

# PowerToys
mkdir /mnt/Backups/Windows/PowerToys/
rsync -r --progress --ignore-existing /media/soders/2TBNTFS/Documents/PowerToys/Backup /mnt/Backups/Windows/PowerToys/

# Powershell
mkdir /mnt/Backups/Windows/Powershell/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/Microsoft/Windows/PowerShell/PSReadLine/ConsoleHost_history.txt /mnt/Backups/Windows/Powershell/

# QBit
mkdir /mnt/Backups/Windows/qBittorrent/
mkdir /mnt/Backups/Windows/qBittorrent/qBittorrent-History/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/qBittorrent/qBittorrent.ini /mnt/Backups/Windows/qBittorrent/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/qBittorrent/watched_folders.json /mnt/Backups/Windows/qBittorrent/
rsync -r --progress --ignore-existing "/media/soders/2TBNTFS/Documents/qBittorrent History" /mnt/Backups/Windows/qBittorrent/qBittorrent-History/

# WinSCP
mkdir /mnt/Backups/Windows/WinSCP/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/WinSCP.ini

# Everything
rsync -r --progress /mnt/WIN1/Users/Soders/AppData/Roaming/Everything /mnt/Backups/Windows/

# Everything Toolbar
rsync -r --progress /mnt/WIN1/Users/Soders/AppData/Roaming/EverythingToolbar /mnt/Backups/Windows/

# Audacity
mkdir /mnt/Backups/Windows/Audacity/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/audacity/audacity.cfg /mnt/Backups/Windows/Audacity/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Roaming/audacity/pluginsettings.cfg /mnt/Backups/Windows/Audacity/

# ImageGlass
mkdir /mnt/Backups/Windows/ImageGlass/
rsync --progress /mnt/WIN1/Users/Soders/AppData/Local/ImageGlass/igconfig.json /mnt/Backups/Windows/ImageGlass/

# Disk Names / Status
mkdir /mnt/Backups/Linux/MT1/System-Reports/
mkdir /tmp/System-Stats-MT1/
touch /tmp/System-Stats-MT1/disks.txt
touch /mnt/Backups/Linux/MT1/System-Reports/disks.txt
[ -f "/" ] || 2> /dev/null df -H / --output=source,pcent,used,avail > /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/Mint:      /g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdf1" ] || 2> /dev/null df -H /dev/sdf1 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sde1" ] || 2> /dev/null df -H /dev/sde1 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/7TBEXT4:   /g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdf2" ] || 2> /dev/null df -H /dev/sdf2 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sde2" ] || 2> /dev/null df -H /dev/sde2 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/2TBNTFS:   /g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdb1" ] || 2> /dev/null df -H /dev/sdb1 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/Backups:   /g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdd2" ] || 2> /dev/null df -H /dev/sdd2 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/Peppermint:/g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdc2" ] || 2> /dev/null df -H /dev/sdc2 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/Mint2:     /g' /tmp/System-Stats-MT1/disks.txt
disks=$(cat /tmp/System-Stats-MT1/disks.txt)
echo "Disk Usage:
$disks" > /mnt/Backups/Linux/MT1/System-Reports/disks.txt

# Timestamp
touch /mnt/Backups/Linux/MT1/timestamp.txt
touch /mnt/Backups/Windows/timestamp.txt
date "+%I:%M:%S %p  %D" > /mnt/Backups/Linux/MT1/timestamp.txt
date "+%I:%M:%S %p  %D" > /mnt/Backups/Windows/timestamp.txt

# Portable Backup
mkdir /mnt/Portable-Backup/Misc/
mkdir /mnt/Portable-Backup/Misc/Music/
# mkdir /mnt/Portable-Backup/Desktop/
# mkdir /mnt/Portable-Backup/Desktop/MT1/
# rsync -r --progress --delete ~/Desktop/ /mnt/Portable-Backup/Desktop/MT1/
rsync -r --progress /mnt/Backups/Linux/MT1 /mnt/Portable-Backup/Linux/
rsync -r --progress /mnt/Backups/Windows /mnt/Portable-Backup/
rsync -r --progress /mnt/Backups/Misc/3D-Printing /mnt/Portable-Backup/Misc/
rsync -r --progress --ignore-existing --delete /mnt/Backups/Misc/IPAS /mnt/Portable-Backup/Misc/
rsync -r --progress --ignore-existing --delete /mnt/Backups/Misc/Memes /mnt/Portable-Backup/Misc/
rsync -r --progress --ignore-existing "/mnt/Backups/Misc/Music/External Tags" /mnt/Portable-Backup/Misc/Music/
rsync -r --progress --ignore-existing /mnt/Backups/Misc/Music/Playlists /mnt/Portable-Backup/Misc/Music/
rsync -r --progress --ignore-existing --delete /mnt/Backups/Misc/Nextcloud /mnt/Portable-Backup/Misc/
rsync -r --progress --delete /mnt/Backups/Linux/MT1/Samples/ /mnt/Portable-Backup/Linux/MT1/Samples/
rsync -r --progress --ignore-existing /mnt/Backups/Misc/VLC /mnt/Portable-Backup/Misc/

break
fi
done
echo -e "${GREEN}Backup completed!${NC}" && sleep 3
fi
            break
            ;;
        "Sync")
if [ ! -f /mnt/Portable-Backup/status.txt ]; then
echo -e "${RED}USB not detected.${NC}"
sleep 3
else
rsync -r --progress --delete /mnt/Portable-Backup/Linux/ /mnt/Backups/Linux/
rsync -r --progress --delete /mnt/Portable-Backup/Windows/ /mnt/Backups/Windows/
rsync -r --progress --delete /mnt/Portable-Backup/Misc/ /mnt/Backups/Misc/

# Redshift
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/Redshift/Summer.conf /home/soders/Nextcloud/GitHub/Configs/Configs/Redshift/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/Redshift/Winter.conf /home/soders/Nextcloud/GitHub/Configs/Configs/Redshift/

# XScreenSaver
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/XScreenSaver/.default /home/soders/Nextcloud/GitHub/Configs/Configs/XScreenSaver/

# YTDLP
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/album.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/audio.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/generic-video.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/radio.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/song.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/soundcloud-album.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/soundcloud-first-listen.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/soundcloud-playlist.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/soundcloud-song.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/twitch-video-1080p.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/youtube-first-listen.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/youtube-music-playlist.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/youtube-music-video.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/youtube-sample.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT1/Documents/Configs/YTDLP/youtube-video-1080p.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT2/Documents/Configs/YTDLP/youtube-video-480p.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/
rsync --progress /mnt/Backups/Linux/MT2/Documents/Configs/YTDLP/twitch-video-480p.conf /home/soders/Nextcloud/GitHub/Configs/Configs/YTDLP/

# Opt scripts
rsync --progress /mnt/Backups/Linux/MT1/opt/Scripts/mkchromecast.sh /home/soders/Nextcloud/GitHub/Scripts/Scripts/opt/
rsync --progress /mnt/Backups/Linux/MT1/opt/Scripts/no-sleep-1.sh /home/soders/Nextcloud/GitHub/Scripts/Scripts/opt/
rsync --progress /mnt/Backups/Linux/MT1/opt/Scripts/no-sleep-2.sh /home/soders/Nextcloud/GitHub/Scripts/Scripts/opt/
rsync --progress /mnt/Backups/Linux/MT1/opt/Scripts/openrgb.sh /home/soders/Nextcloud/GitHub/Scripts/Scripts/opt/
rsync --progress /mnt/Backups/Linux/MT1/opt/Scripts/start-sound.sh /home/soders/Nextcloud/GitHub/Scripts/Scripts/opt/
rsync --progress /mnt/Backups/Linux/QBit/opt/Scripts/flaresolverr.sh /home/soders/Nextcloud/GitHub/Scripts/Scripts/opt/

# Templates
rsync --progress "/mnt/Backups/Linux/MT1/Templates/Bash Script.sh" /home/soders/Nextcloud/GitHub/Scripts/Scripts/Templates/Bash/
rsync --progress "/mnt/Backups/Linux/MT1/Templates/CD Art.xcf" /home/soders/Nextcloud/GitHub/Programs/Programs/Gimp/Templates/
rsync --progress "/mnt/Backups/Linux/MT1/Templates/Logo Art.xcf" /home/soders/Nextcloud/GitHub/Programs/Programs/Gimp/Templates/
rsync --progress "/mnt/Backups/Linux/MT1/Templates/Vinyl Art.xcf" /home/soders/Nextcloud/GitHub/Programs/Programs/Gimp/Templates/
rsync --progress /mnt/Backups/Linux/MT1/Templates/Icons.xcf /home/soders/Nextcloud/GitHub/Programs/Programs/Gimp/Templates/
rsync --progress /mnt/Backups/Linux/MT1/Templates/Other/Jellyfin-Banner.xcf /home/soders/Nextcloud/GitHub/Programs/Programs/Gimp/Templates/

# SFP
rsync --progress /mnt/Backups/Linux/MT1/SFP/SFP.config /home/soders/Nextcloud/GitHub/Configs/Configs/SFP/Linux/
rsync --progress /mnt/Backups/Windows/SFP/SFP.config /home/soders/Nextcloud/GitHub/Configs/Configs/SFP/Windows/

# Steam Metro theme
rsync -r --progress /mnt/Backups/Linux/MT1/MetroSteam /home/soders/Nextcloud/GitHub/Configs/Configs/

# VLC
rsync --progress /mnt/Backups/Linux/MT1/VLC/vlcrc /home/soders/Nextcloud/GitHub/Configs/Configs/VLC/Linux/
rsync --progress /mnt/Backups/Windows/VLC/vlcrc /home/soders/Nextcloud/GitHub/Configs/Configs/VLC/Windows/

# GTK
rsync --progress /mnt/Backups/Linux/MT1/gtk-3.0/gtk.css /home/soders/Nextcloud/GitHub/Configs/Configs/gtk-3.0/
rsync --progress /mnt/Backups/Linux/MT1/gtk-3.0/settings.ini /home/soders/Nextcloud/GitHub/Configs/Configs/gtk-3.0/

# Deckmaster
rsync --progress /mnt/Backups/Linux/MT1/Deckmaster/Decks/dracula.deck /home/soders/Nextcloud/GitHub/Configs/Configs/Deckmaster/
rsync --progress /mnt/Backups/Linux/MT1/Deckmaster/Decks/night-shift.deck /home/soders/Nextcloud/GitHub/Configs/Configs/Deckmaster/
rsync --progress /mnt/Backups/Linux/MT1/Deckmaster/Decks/unlock-nightshift-disabled.deck /home/soders/Nextcloud/GitHub/Configs/Configs/Deckmaster/
rsync --progress /mnt/Backups/Linux/MT1/Deckmaster/Decks/unlock-nightshift-enabled.deck /home/soders/Nextcloud/GitHub/Configs/Configs/Deckmaster/

# btop
rsync --progress /mnt/Backups/Linux/MT1/btop/btop.conf /home/soders/Nextcloud/GitHub/Configs/Configs/btop/

# fooyin
rsync --progress /mnt/Backups/Linux/MT1/fooyin/layouts/Purple.fyl /home/soders/Nextcloud/GitHub/Configs/Configs/fooyin/PC/
rsync --progress /mnt/Backups/Linux/MT1/fooyin/layouts/Orange.fyl /home/soders/Nextcloud/GitHub/Configs/Configs/fooyin/PC/
rsync --progress /mnt/Backups/Linux/MT3/fooyin/layouts/Green.fyl /home/soders/Nextcloud/GitHub/Configs/Configs/fooyin/Laptop/
rsync --progress /mnt/Backups/Linux/MT3/fooyin/layouts/Orange.fyl /home/soders/Nextcloud/GitHub/Configs/Configs/fooyin/Laptop/

# FreeTube
rsync --progress /mnt/Backups/Linux/MT1/FreeTube/settings.db /home/soders/Nextcloud/GitHub/Configs/Configs/FreeTube/

# mkchromecast
rsync --progress /mnt/Backups/Linux/MT1/mkchromecast/mkchromecast.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/mkchromecast/

# Simplify3D
rsync --progress /mnt/Backups/Linux/MT1/Simplify-3D/DarkMode.qss /home/soders/Nextcloud/GitHub/Configs/Configs/Simplify3D/

# XFCE
rsync --progress /mnt/Backups/Linux/MT1/xfce4/terminal/terminalrc /home/soders/Nextcloud/GitHub/Configs/Configs/xfce4/
rsync --progress /mnt/Backups/Linux/MT1/xfce4-dict/xfce4-dict.rc /home/soders/Nextcloud/GitHub/Configs/Configs/xfce4/

# Xed
rsync --progress --ignore-existing /mnt/Backups/Linux/MT1/xed/bohemian.xml /home/soders/Nextcloud/GitHub/Configs/Configs/xed/
rsync --progress /mnt/Backups/Linux/MT1/xed/preferences.txt /home/soders/Nextcloud/GitHub/Configs/Configs/xed/

# lightdm
rsync --progress /mnt/Backups/Linux/MT1/lightdm/lightdm.conf /home/soders/Nextcloud/GitHub/Configs/Configs/lightdm/
rsync --progress /mnt/Backups/Linux/MT1/lightdm/slick-greeter.conf /home/soders/Nextcloud/GitHub/Configs/Configs/lightdm/

# udev
rsync --progress /mnt/Backups/Linux/MT1/udev/rules.d/99-streamdeck.rules /home/soders/Nextcloud/GitHub/Configs/Configs/udev/

# systemd
rsync --progress /mnt/Backups/Linux/MT1/systemd/system/jellyseerr.service /home/soders/Nextcloud/GitHub/Configs/Configs/systemd/
rsync --progress /mnt/Backups/Linux/MT1/systemd/system/no-sleep-1.service /home/soders/Nextcloud/GitHub/Configs/Configs/systemd/
rsync --progress /mnt/Backups/Linux/MT1/systemd/system/no-sleep-2.service /home/soders/Nextcloud/GitHub/Configs/Configs/systemd/
rsync --progress /mnt/Backups/Linux/QBit/systemd/system/flaresolverr.service /home/soders/Nextcloud/GitHub/Configs/Configs/systemd/

# Calendar
rsync --progress /mnt/Backups/Linux/MT2/calendar/default /home/soders/Nextcloud/GitHub/Configs/Configs/calendar/

# Cavalier
rsync --progress /mnt/Backups/Linux/MT1/Cavalier/cava_config /home/soders/Nextcloud/GitHub/Configs/Configs/Cavalier/
rsync --progress /mnt/Backups/Linux/MT1/Cavalier/config.json /home/soders/Nextcloud/GitHub/Configs/Configs/Cavalier/

# Flameshot
rsync --progress /mnt/Backups/Linux/MT1/Flameshot/flameshot.ini /home/soders/Nextcloud/GitHub/Configs/Configs/Flameshot/

# KShutdown
rsync --progress /mnt/Backups/Linux/MT1/KShutdown/kshutdownrc /home/soders/Nextcloud/GitHub/Configs/Configs/KShutdown/

# Retro Arch
rsync --progress /mnt/Backups/Linux/MT1/retroarch/retroarch.cfg "/home/soders/Nextcloud/GitHub/Configs/Configs/Retro Arch/PC/"
rsync --progress /mnt/Backups/Misc/Retro-Arch/AppleTV/retroarch.cfg "/home/soders/Nextcloud/GitHub/Configs/Configs/Retro Arch/AppleTV/"

# Slimbook Battery
rsync --progress /mnt/Backups/Linux/MT1/slimbookbattery/slimbookbattery.conf "/home/soders/Nextcloud/GitHub/Configs/Configs/Slimbook Battery/"

# ImageGlass
rsync --progress /mnt/Backups/Windows/ImageGlass/ /home/soders/Nextcloud/GitHub/Configs/Configs/ImageGlass/

# ConvertAll
rsync --progress /mnt/Backups/Linux/MT1/ConvertAll/.convertall /home/soders/Nextcloud/GitHub/Configs/Configs/ConvertAll/

# Printer timestamp
touch /mnt/Backups/timestamp.txt
date "+%B %d" > /mnt/Backups/timestamp.txt

~/Scripts/git-remove-private.sh

cd ~/Nextcloud/GitHub/Bookmarks/Bookmarks/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/Programs/Programs/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/Scripts/Scripts/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/Configs/Configs/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/Misc/Misc/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

notify-send -i ~/.icons/GitHub-Symbolic.png "GitHub" "Repositories updated."
fi
            break
            ;;
        "Projects")
mkdir /mnt/Backups/Projects/
rsync -r --progress ~/Projects /mnt/Backups/Projects/
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

fi
