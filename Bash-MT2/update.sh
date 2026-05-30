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
options=("MT2" "Seerr" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "MT2")
# Close programs
~/Scripts/disable-jellyfin-mt2.sh

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
# echo -e "${YELLOW}Updating spotDL..${NC}"
# pip install --upgrade spotdl
# echo -e "${GREEN}spotDL finished!${NC}"

# Tdarr
# echo -e "${YELLOW}Updating Tdarr..${NC}"
# cd ~/Programs/Tdarr/
# ~/Programs/Tdarr/Tdarr_Updater
# echo -e "${GREEN}Tdarr finished!${NC}"

# Clean
echo -e "${YELLOW}Cleaning up..${NC}"
sudo apt autoremove
sudo apt autoclean

echo -e "${GREEN}Updates finished!${NC}" && sleep 3

# Enable programs
nohup ~/Scripts/enable-jellyfin-mt2.sh
            break
            ;;
        "Seerr")
# https://docs.seerr.dev/getting-started/buildfromsource
# 0. Close Seerr
# Close programs
~/Scripts/disable-servarrs-mt2.sh
echo -e "${YELLOW}Updating Seerr..${NC}"
# 1. Install requirements
# sudo apt install npm
# sudo npm install -g n
# curl -fsSL https://get.pnpm.io/install.sh | sh -

# 2. Update pnpm
# pnpm add -g pnpm
# pnpm -v

# 3. Update nvm
# https://github.com/nvm-sh/nvm#installing-and-updating
# command -v nvm  IS NVM INSTALLED?
# . ~/.bashrc  RF - REFRESH AFTER INSTALL

# 4. Update node
# nvm install 22.19.0  REPLACE WITH REQUIRED VERSION
# nvm use 22.19.0
# nvm alias default 22.19.0
# nvm uninstall 18.20.2  UNINSTALL OLD VERSION
# . ~/.bashrc  RF - APPLY CHANGES
# node -v
# which node
# EDIT "/etc/systemd/system/jellyseerr.service" STARTING STRING OF LINE "ExecStart="

# 5. Build
cd /opt/jellyseerr/

git pull

rm -rf /opt/jellyseerr/dist
rm -rf /opt/jellyseerr/.next
rm -rf /opt/jellyseerr/node_modules

# Windows only
# npm install -g win-node-env

# Legacy
# set CYPRESS_INSTALL_BINARY=0 && pnpm install --frozen-lockfile
# New
CYPRESS_INSTALL_BINARY=0 pnpm install --frozen-lockfile

pnpm build
echo -e "${GREEN}Seerr finished!${NC}"
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
