#!/bin/bash

source ~/.env

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

printf "\033]0;%s\a" "Update"

echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣶⣶⣶⣶⣶⣶⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⠿⠟⠛⠉⠉⠉⠉⠉⠉⠛⠻⠿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡿⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠋⣿⣿⠙⢿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⢻⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠈⠛⠋⠀⠀⣿⣿⠀⠀⠙⠛⠃⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣷⣦⣤⣄⣀⣀⣀⣀⣠⣤⣴⣾⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠿⠿⠿⠿⠿⠿⠟⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

export PS3=$'\033[0;32mSelect an option: \e[0m'
options=("MT1" "Jellyseerr" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "MT1")
# Close programs
pkill nextcloud > /dev/null 2>&1&
~/Scripts/disable-jellyfin-mt1.sh

# Apt
echo -e "${YELLOW}Updating Apt packages..${NC}"
sudo apt update
sudo apt upgrade -y
echo -e "${GREEN}Apt packages finished!${NC}"

# Flatpak
echo -e "${YELLOW}Updating Flatpaks..${NC}"
flatpak update -y
echo -e "${GREEN}Flatpaks finished!${NC}"

# YTDLP
echo -e "${YELLOW}Updating YTDLP..${NC}"
~/.local/bin/ytdlp -U
# pip install --upgrade yt-dlp
echo -e "${GREEN}YTDLP finished!${NC}"

# Deno
echo -e "${YELLOW}Updating Deno..${NC}"
~/.deno/bin/deno upgrade stable
echo -e "${GREEN}Deno finished!${NC}"

# spotDL
echo -e "${YELLOW}Updating spotDL..${NC}"
# pip install --upgrade spotdl
echo -e "${GREEN}spotDL finished!${NC}"

# Spicetify
echo -e "${YELLOW}Updating Spicetify..${NC}"
sudo chmod a+wr /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify
sudo chmod a+wr -R /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/Apps
~/.spicetify/spicetify update
~/.spicetify/spicetify backup apply
~/.spicetify/spicetify restore backup apply
# Spicetify marketplace
# curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
echo -e "${GREEN}Spicetify finished!${NC}"

# Steam Metro theme
echo -e "${YELLOW}Updating Steam Metro theme..${NC}"
cd /tmp/
git clone https://github.com/RoseTheFlower/MetroSteam.git
rsync --progress /tmp/MetroSteam/notifications.custom.css ~/.steam/steam/steamui/skins/MetroSteam/notifications.custom.css
rsync --progress /tmp/MetroSteam/libraryroot.custom.css ~/.steam/steam/steamui/skins/MetroSteam/libraryroot.custom.css
rsync --progress /tmp/MetroSteam/friends.custom.css ~/.steam/steam/steamui/skins/MetroSteam/friends.custom.css
cd ~/
echo -e "${GREEN}Steam Metro theme finished!${NC}"

# Winetricks
echo -e "${YELLOW}Updating Winetricks..${NC}"
sudo winetricks --self-update
echo -e "${GREEN}Winetricks finished!${NC}"

# ArmorPaint
# ~/Scripts/update-armor-paint.sh
# cd ~/

# RetroArch thumbnails
# echo -e "${YELLOW}Updating RetroArch thumbnails..${NC}"
# cd ~/Games/retroarch/thumbnails/
# git pull
# git submodule update --recursive --remote --init --force
# cd ~/
# echo -e "${GREEN}RetroArch thumbnails finished!${NC}"

# Tdarr
# echo -e "${YELLOW}Updating Tdarr..${NC}"
# cd ~/Programs/Tdarr/
# ~/Programs/Tdarr/Tdarr_Updater
# echo -e "${GREEN}Tdarr finished!${NC}"

# Git
# echo -e "${YELLOW}Updating Git..${NC}"
# sudo apt upgrade git
# echo -e "${GREEN}Git finished!${NC}"

# Clean
echo -e "${YELLOW}Cleaning up..${NC}"
sudo apt autoremove
sudo apt autoclean

# Remove mpv shaders cache
# rm ~/.config/mpv/shaders/cache/*

# Remove OpenRGB logs
rm ~/.var/app/org.openrgb.OpenRGB/config/OpenRGB/logs/*

# Enable programs
nohup "/usr/bin/nextcloud" --background > /dev/null 2>&1&
nohup ~/Scripts/enable-jellyfin-mt1.sh
echo -e "${GREEN}Updates finished!${NC}" && sleep 3
            break
            ;;
        "Jellyseerr")
~/Scripts/disable-servarrs-mt1.sh
echo -e "${YELLOW}Updating Jellyseerr..${NC}"
cd /opt/jellyseerr/

git pull

rm -f /opt/jellyseerr/dist
rm -f /opt/jellyseerr/.next
rm -f /opt/jellyseerr/node_modules

npm install -g win-node-env
set CYPRESS_INSTALL_BINARY=0 && pnpm install --frozen-lockfile

pnpm build
echo -e "${GREEN}Jellyseerr finished!${NC}"
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
