#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Close Spotify if running.
flatpak kill com.spotify.Client

# Flatpak
echo -e "${YELLOW}Updating Flatpaks..${NC}"
flatpak update -y
echo -e "${GREEN}Flatpaks finished!${NC}"

# Spicetify
echo -e "${YELLOW}Updating Spicetify..${NC}"
sudo chmod a+wr /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify
sudo chmod a+wr -R /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/Apps
~/.spicetify/spicetify update
~/.spicetify/spicetify backup apply
~/.spicetify/spicetify restore backup apply
# UNCOMMENT FOR MARKETPLACE
# Spicetify marketplace
# curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
echo -e "${GREEN}Spicetify finished!${NC}"

# Close Spotify if running.
flatpak kill com.spotify.Client
