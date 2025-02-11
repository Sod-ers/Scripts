#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}Starting Radarr, Sonarr, & Jellyseerr...${NC}"

sudo systemctl start radarr
sudo systemctl start sonarr
sudo systemctl start jellyseerr

exit