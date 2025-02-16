#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}Shutting down Radarr, Sonarr, & Jellyseerr...${NC}"

sudo systemctl stop radarr
sudo systemctl stop sonarr
sudo systemctl stop jellyseerr

exit