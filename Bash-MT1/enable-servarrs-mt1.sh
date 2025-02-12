#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}Authenticate to enable Radarr, Sonarr, Lidarr, Readarr, Prowlarr, Jellyseerr, & Flaresolverr...${NC}"

nohup ~/Programs/Flaresolverr/flaresolverr > /dev/null 2>&1&

sudo systemctl start lidarr
sudo systemctl start radarr
sudo systemctl start sonarr
sudo systemctl start readarr
sudo systemctl start prowlarr
sudo systemctl start jellyseerr