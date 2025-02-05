#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

cp -r /home/soders/Games/Open-Fortress/custom /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/custom
cp /home/soders/Games/Open-Fortress/lightning_gun.pcf /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/particles/lightning_gun.pcf

echo -e "${GREEN}Patched${NC}"
sleep 3
