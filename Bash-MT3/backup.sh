#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

printf "\033]0;%s\a" "Backup"

if [ ! -f /mnt/SD-64/status.txt ]; then
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
options=("MT3" "Sync" "Desktop" "Projects" "Quit")
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
mkdir /mnt/Portable-Backup/Desktop/MT3/
mkdir /mnt/SD-64/Desktop/
mkdir /mnt/SD-64/Desktop/MT3/
rsync -r --progress --delete ~/Desktop/ /mnt/Portable-Backup/Desktop/MT3/
rsync -r --progress --delete ~/Desktop/ /mnt/SD-64/Desktop/MT3/
break
fi
done
echo -e "${GREEN}Backup completed!${NC}" && sleep 3
fi
            break
            ;;
        "MT3")
if [ ! -f /mnt/Portable-Backup/status.txt ]; then
echo -e "${RED}USB not detected.${NC}"
sleep 3
else
echo -e "${YELLOW}WARNING! About to begin backup.${NC}" && sleep 3
echo -e "${RED}Press any key to proceed.${NC}"
while true; do
read -rsn1 key
if [[ -n "$key" ]]; then

mkdir /mnt/SD-64/Linux/
mkdir /mnt/SD-64/Linux/MT3/
mkdir /mnt/SD-64/Misc/

mkdir /mnt/SD-64/Linux/MT3/Firewall/
mkdir /mnt/SD-64/Linux/MT3/System-Reports/
touch /mnt/SD-64/Linux/MT3/System-Reports/System-Information.txt
touch /mnt/SD-64/Linux/MT3/crontabs.txt
mkdir /mnt/SD-64/Linux/MT3/Browser-Bookmarks/
mkdir /mnt/SD-64/Linux/MT3/Tabliss/

# feh
rsync -r --progress ~/.config/feh /mnt/SD-64/Linux/MT3/

# Dunst
mkdir /mnt/SD-64/Linux/MT3/Dunst/
rsync -r --progress ~/.config/dunst/dunstrc /mnt/SD-64/Linux/MT3/Dunst/

# Geany
mkdir /mnt/SD-64/Linux/MT3/Geany/
rsync -r --progress ~/.config/geany/geany.conf /mnt/SD-64/Linux/MT3/Geany/

# Whisker menu programs
mkdir /mnt/SD-64/Linux/MT3/Whisker-Menu/
rsync -r --progress --delete ~/.local/share/applications /mnt/SD-64/Linux/MT3/Whisker-Menu/

# ConvertAll
mkdir /mnt/SD-64/Linux/MT3/ConvertAll/
rsync --progress ~/.convertall /mnt/SD-64/Linux/MT3/ConvertAll/

# GitHub
mkdir /mnt/SD-64/Linux/MT3/GitHub/
rsync --progress ~/.gitconfig /mnt/SD-64/Linux/MT3/GitHub/

# Desktop
# mkdir /mnt/SD-64/Desktop/
# mkdir /mnt/SD-64/Desktop/MT3/
# rsync -r --progress --delete ~/Desktop /mnt/SD-64/Desktop/MT3/

# Pictures
mkdir /mnt/SD-64/Linux/MT3/Pictures/
rsync -r --progress --ignore-existing ~/Pictures/Misc /mnt/SD-64/Linux/MT3/Pictures/
rsync -r --progress --ignore-existing ~/Pictures/Screenshots /mnt/SD-64/Linux/MT3/Pictures/
rsync -r --progress ~/Pictures/Wallpapers /mnt/SD-64/Linux/MT3/Pictures/

# Videos
mkdir /mnt/SD-64/Linux/MT3/Videos/
rsync -r --progress ~/Videos/Playlists /mnt/SD-64/Linux/MT3/Videos/

# Documents
mkdir /mnt/SD-64/Linux/MT3/Documents/
rsync -r --progress ~/Documents/Spreadsheets /mnt/SD-64/Linux/MT3/Documents/
rsync -r --progress --ignore-existing ~/Documents/PDFs /mnt/SD-64/Linux/MT3/Documents/
rsync -r --progress ~/Documents/Notes /mnt/SD-64/Linux/MT3/Documents/
rsync -r --progress ~/Documents/LunaSea /mnt/SD-64/Linux/MT3/Documents/
rsync -r --progress ~/Documents/Configs /mnt/SD-64/Linux/MT3/Documents/
rsync -r --progress --ignore-existing ~/Documents/Books /mnt/SD-64/Linux/MT3/Documents/

# Zips
rsync -r --progress ~/Zips /mnt/SD-64/Linux/MT3/

# Samples
mkdir /mnt/SD-64/Linux/MT3/Samples/
rsync -r --progress ~/Samples/ /mnt/SD-64/Linux/MT3/Samples/

# Scripts
mkdir /mnt/SD-64/Linux/MT3/Scripts/
rsync -r --progress ~/Scripts/ /mnt/SD-64/Linux/MT3/Scripts/

# Opt scripts
mkdir /mnt/SD-64/Linux/MT3/opt/
rsync -r --progress /opt/Scripts /mnt/SD-64/Linux/MT3/opt/

# Templates
mkdir /mnt/SD-64/Linux/MT3/Templates/
rsync -r --progress ~/Templates/ /mnt/SD-64/Linux/MT3/Templates/

# System Sounds
rsync -r --progress ~/.local/share/sounds /mnt/SD-64/Linux/MT3/

# Redshift
rsync -r --progress ~/Configs/Redshift /mnt/SD-64/Linux/MT3/

# XScreenSaver
rsync -r --progress ~/Configs/XScreenSaver /mnt/SD-64/Linux/MT3/

# YTDLP
rsync -r --progress ~/Configs/YTDLP /mnt/SD-64/Linux/MT3/

# VLC
mkdir /mnt/SD-64/Linux/MT3/VLC/
rsync --progress ~/.var/app/org.videolan.VLC/config/vlc/vlcrc /mnt/SD-64/Linux/MT3/VLC/
rsync --progress ~/.var/app/org.videolan.VLC/config/vlc/vlc-qt-interface.conf /mnt/SD-64/Linux/MT3/VLC/

# GTK
rsync -r --progress ~/.config/gtk-3.0 /mnt/SD-64/Linux/MT3/

# btop
rsync -r --progress ~/.config/btop /mnt/SD-64/Linux/MT3/

# Fooyin
mkdir /mnt/SD-64/Linux/MT3/fooyin/
rsync -r --progress /home/soders/.var/app/org.fooyin.fooyin/config/fooyin /mnt/SD-64/Linux/MT3/

# Feishin
mkdir /mnt/SD-64/Linux/MT3/Feishin/
rsync --progress ~/.config/feishin/config.json /mnt/SD-64/Linux/MT3/Feishin/

# FreeTube
mkdir /mnt/SD-64/Linux/MT3/FreeTube/
mkdir /mnt/SD-64/Linux/MT3/FreeTube/flatpak/
rsync --progress ~/.config/FreeTube/profiles.db /mnt/SD-64/Linux/MT3/FreeTube/
rsync --progress ~/.config/FreeTube/settings.db /mnt/SD-64/Linux/MT3/FreeTube/
rsync --progress ~/.config/FreeTube/playlists.db /mnt/SD-64/Linux/MT3/FreeTube/
rsync --progress ~/.config/FreeTube/history.db /mnt/SD-64/Linux/MT3/FreeTube/
rsync --progress ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/profiles.db /mnt/SD-64/Linux/MT3/FreeTube/flatpak/
rsync --progress ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/settings.db /mnt/SD-64/Linux/MT3/FreeTube/flatpak/
rsync --progress ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/playlists.db /mnt/SD-64/Linux/MT3/FreeTube/flatpak/
rsync --progress ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/history.db /mnt/SD-64/Linux/MT3/FreeTube/flatpak/

# mkchromecast
mkdir /mnt/SD-64/Linux/MT3/mkchromecast/
rsync --progress ~/.config/mkchromecast/mkchromecast.cfg /mnt/SD-64/Linux/MT3/mkchromecast/

# Mullvad
mkdir /mnt/SD-64/Linux/MT3/Mullvad-VPN/
rsync --progress "/home/soders/.config/Mullvad VPN/gui_settings.json" /mnt/SD-64/Linux/MT3/Mullvad-VPN/

# XFCE
mkdir /mnt/SD-64/Linux/MT3/.local/
mkdir /mnt/SD-64/Linux/MT3/.local/share/
rsync -r --progress ~/.config/xfce4 /mnt/SD-64/Linux/MT3/
rsync -r --progress ~/.config/xfce4-dict /mnt/SD-64/Linux/MT3/
rsync -r --progress ~/.local/share/xfce4 /mnt/SD-64/Linux/MT3/.local/share/

# Keyrings
rsync -r --progress ~/.local/share/keyrings /mnt/SD-64/Linux/MT3/

# dconf database
mkdir /mnt/SD-64/Linux/MT3/dconf/
rsync --progress ~/.config/dconf/user /mnt/SD-64/Linux/MT3/dconf/

# Startup programs
rsync -r --progress ~/.config/autostart /mnt/SD-64/Linux/MT3/

# Sticky notes
mkdir /mnt/SD-64/Linux/MT3/.local/
mkdir /mnt/SD-64/Linux/MT3/.local/share/
rsync -r --progress ~/.local/share/notes /mnt/SD-64/Linux/MT3/.local/share/

# Chatterino
mkdir /mnt/SD-64/Linux/MT3/Chatterino/
rsync --progress ~/.local/share/chatterino/Settings/settings.json /mnt/SD-64/Linux/MT3/Chatterino/

# Jellyfin Media Player
mkdir /mnt/SD-64/Linux/MT3/jellyfinmediaplayer/
mkdir /mnt/SD-64/Linux/MT3/jellyfinmediaplayer/flatpak/
rsync --progress ~/.local/share/jellyfinmediaplayer/jellyfinmediaplayer.conf /mnt/SD-64/Linux/MT3/jellyfinmediaplayer/
rsync --progress "/home/soders/.var/app/com.github.iwalton3.jellyfin-media-player/config/jellyfin.org/Jellyfin Media Player.conf" /mnt/SD-64/Linux/MT3/jellyfinmediaplayer/flatpak/

# Digikam
mkdir /mnt/SD-64/Linux/MT3/digiKam/
mkdir /mnt/SD-64/Linux/MT3/digiKam/systempackage/
# rsync --progress ~/.var/app/org.kde.digikam/config/digikamrc /mnt/SD-64/Linux/MT3/digiKam/
# rsync --progress ~/.var/app/org.kde.digikam/config/digikam_systemrc /mnt/SD-64/Linux/MT3/digiKam/
rsync --progress ~/.local/share/digikam/QtWebEngine/Default/user_prefs.json /mnt/SD-64/Linux/MT3/digiKam/systempackage/

# local bin
rsync -r --progress --ignore-existing ~/.local/bin /mnt/SD-64/Linux/MT3/

# Xed
mkdir /mnt/SD-64/Linux/MT3/xed/
touch /mnt/SD-64/Linux/MT3/xed/preferences.txt
dconf dump /org/x/editor/preferences/ > /mnt/SD-64/Linux/MT3/xed/preferences.txt

# SSH
rsync -r --progress --ignore-existing ~/.ssh /mnt/SD-64/Linux/MT3/

# Bash Aliases
rsync --progress ~/.bash_aliases /mnt/SD-64/Linux/MT3/

# Bash History
rsync --progress ~/.bash_history /mnt/SD-64/Linux/MT3/

# Bashrc
rsync --progress ~/.bashrc /mnt/SD-64/Linux/MT3/

# lightdm
rsync -r --progress /etc/lightdm /mnt/SD-64/Linux/MT3/

# udev rules
rsync -r --progress /etc/udev /mnt/SD-64/Linux/MT3/

# systemd
mkdir /mnt/SD-64/Linux/MT3/systemd/
rsync -r --progress /etc/systemd/system /mnt/SD-64/Linux/MT3/systemd/

# PKG list
mkdir /mnt/SD-64/Linux/MT3/Packages/
touch /mnt/SD-64/Linux/MT3/Packages/Snap.txt
touch /mnt/SD-64/Linux/MT3/Packages/Flatpak.txt
rsync -r --progress ~/Documents/Backups /mnt/SD-64/Linux/MT3/Packages/
snap list > /mnt/SD-64/Linux/MT3/Packages/Snap.txt
flatpak list > /mnt/SD-64/Linux/MT3/Packages/Flatpak.txt

# Filezilla
rsync -r --progress ~/.var/app/org.filezillaproject.Filezilla/config/filezilla /mnt/SD-64/Linux/MT3/

# KShutdown
mkdir /mnt/SD-64/Linux/MT3/KShutdown/
rsync --progress ~/.config/kshutdownrc /mnt/SD-64/Linux/MT3/KShutdown/

# LocalSend
mkdir /mnt/SD-64/Linux/MT3/LocalSend/
rsync --progress ~/.var/app/org.localsend.localsend_app/data/localsend_app/shared_preferences.json /mnt/SD-64/Linux/MT3/LocalSend/

# Virt-viewer
mkdir /mnt/SD-64/Linux/MT3/virt-viewer/
rsync --progress ~/.config/virt-viewer/settings /mnt/SD-64/Linux/MT3/virt-viewer/

# Retroarch
mkdir /mnt/SD-64/Linux/MT3/retroarch/
rsync --progress ~/.var/app/org.libretro.RetroArch/config/retroarch/retroarch.cfg /mnt/SD-64/Linux/MT3/retroarch/

# Slimbook battery
mkdir /mnt/SD-64/Linux/MT3/slimbookbattery/
rsync --progress ~/.config/slimbookbattery/slimbookbattery.conf /mnt/SD-64/Linux/MT3/slimbookbattery/

# Usermode FTP Server
rsync -r --progress ~/.var/app/eu.ithz.umftpd/config/umftpd /mnt/SD-64/Linux/MT3/

# Obsidian
mkdir /mnt/SD-64/Linux/MT3/Obsidian/
mkdir /mnt/SD-64/Linux/MT3/Obsidian/Notes/
mkdir /mnt/SD-64/Linux/MT3/Obsidian/Arch/
mkdir /mnt/SD-64/Linux/MT3/Obsidian/Project-Planner/
mkdir /mnt/SD-64/Linux/MT3/Obsidian/Weekly-Planner/
rsync -r --progress --delete ~/Nextcloud/Notes/.obsidian /mnt/SD-64/Linux/MT3/Obsidian/Notes/
rsync -r --progress --delete ~/Nextcloud/Arch/.obsidian /mnt/SD-64/Linux/MT3/Obsidian/Arch/
rsync -r --progress --delete ~/Nextcloud/Project-Planner/.obsidian /mnt/SD-64/Linux/MT3/Obsidian/Project-Planner/
rsync -r --progress --delete ~/Nextcloud/Weekly-Planner/.obsidian /mnt/SD-64/Linux/MT3/Obsidian/Weekly-Planner/

# Libre Office
rsync -r --progress ~/.config/libreoffice /mnt/SD-64/Linux/MT3/

# Discord
mkdir /mnt/SD-64/Linux/MT3/Discord/
rsync --progress ~/.var/app/com.discordapp.Discord/config/discord/settings.json /mnt/SD-64/Linux/MT3/Discord/

# Calibre
mkdir /mnt/SD-64/Linux/MT3/Calibre/
rsync --progress ~/.var/app/com.calibre_ebook.calibre/config/calibre/global.py.json /mnt/SD-64/Linux/MT3/Calibre/
rsync --progress ~/.var/app/com.calibre_ebook.calibre/config/calibre/gui.json /mnt/SD-64/Linux/MT3/Calibre/
rsync --progress ~/.var/app/com.calibre_ebook.calibre/config/calibre/gui.py.json /mnt/SD-64/Linux/MT3/Calibre/

# Furtherance
# mkdir /mnt/SD-64/Linux/MT3/Furtherance/
# rsync --progress ~/.var/app/io.unobserved.furtherance/data/furtherance/furtherance.db /mnt/SD-64/Linux/MT3/Furtherance/
# rsync --progress ~/.var/app/io.unobserved.furtherance/config/glib-2.0/settings/keyfile /mnt/SD-64/Linux/MT3/Furtherance/

# Khronos
mkdir /mnt/SD-64/Linux/MT3/Khronos/
rsync -r --progress ~/.var/app/io.github.lainsce.Khronos/data /mnt/SD-64/Linux/MT3/Khronos/


# Musicpod
mkdir /mnt/SD-64/Linux/MT3/Musicpod/
rsync -r --progress ~/.var/app/org.feichtmeier.Musicpod/config/musicpod /mnt/SD-64/Linux/MT3/Musicpod/

# NewsFlash
mkdir /mnt/SD-64/Linux/MT3/NewsFlash/
rsync --progress ~/.var/app/io.gitlab.news_flash.NewsFlash/data/news-flash/database.sqlite /mnt/SD-64/Linux/MT3/NewsFlash/
rsync --progress ~/.var/app/io.gitlab.news_flash.NewsFlash/data/news-flash/database.sqlite-shm /mnt/SD-64/Linux/MT3/NewsFlash/
rsync --progress ~/.var/app/io.gitlab.news_flash.NewsFlash/data/news-flash/database.sqlite-wal /mnt/SD-64/Linux/MT3/NewsFlash/
rsync --progress ~/.var/app/io.gitlab.news_flash.NewsFlash/config/news-flash/newsflash_gtk.json /mnt/SD-64/Linux/MT3/NewsFlash/

# Retro
mkdir /mnt/SD-64/Linux/MT3/Retro/
rsync --progress ~/.var/app/re.sonny.Retro/data/re.sonny.Retro/style.css /mnt/SD-64/Linux/MT3/Retro/

# qView
mkdir /mnt/SD-64/Linux/MT3/qView/
rsync --progress ~/.var/app/com.interversehq.qView/config/qView/qView.conf /mnt/SD-64/Linux/MT3/qView/

# Disk Names / Status
mkdir /mnt/SD-64/Linux/MT3/System-Reports/
mkdir /tmp/System-Stats-MT3/
touch /tmp/System-Stats-MT3/disks.txt
touch /mnt/SD-64/Linux/MT3/System-Reports/disks.txt
[ -f "/" ] || 2> /dev/null df -H / --output=source,pcent,used,avail > /tmp/System-Stats-MT3/disks.txt
sed -i 's/Filesystem/Mint:      /g' /tmp/System-Stats-MT3/disks.txt
[ -f "/dev/sda3" ] || 2> /dev/null df -H /dev/sda3 --output=source,pcent,used,avail >> /tmp/System-Stats-MT3/disks.txt
sed -i 's/Filesystem/Peppermint:/g' /tmp/System-Stats-MT3/disks.txt
disks=$(cat /tmp/System-Stats-MT3/disks.txt)
echo "Disk Usage:
$disks" > /mnt/SD-64/Linux/MT3/System-Reports/disks.txt

# Timestamp
touch /mnt/SD-64/Linux/MT3/timestamp.txt
date "+%I:%M:%S %p  %D" > /mnt/SD-64/Linux/MT3/timestamp.txt

# Portable Backup
# mkdir /mnt/Portable-Backup/Desktop/
# mkdir /mnt/Portable-Backup/Desktop/MT3/
# rsync -r --progress --delete ~/Desktop/ /mnt/Portable-Backup/Desktop/MT3/
rsync -r --progress /mnt/SD-64/Linux/MT3 /mnt/Portable-Backup/Linux/
rsync -r --progress --delete /mnt/SD-64/Linux/MT3/Samples/ /mnt/Portable-Backup/Linux/MT3/Samples/

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
rsync -r --progress --delete /mnt/Portable-Backup/Linux/ /mnt/SD-64/Linux/
rsync -r --progress --delete /mnt/Portable-Backup/Windows/ /mnt/SD-64/Windows/
rsync -r --progress --delete /mnt/Portable-Backup/Misc/ /mnt/SD-64/Misc/
fi
            break
            ;;
        "Projects")
mkdir /mnt/SD-64/Projects/
rsync -r --progress ~/Projects /mnt/SD-64/Projects/
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

fi
