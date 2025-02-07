#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

cp -r /home/soders/Games/Open-Fortress/custom /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/custom
cp /home/soders/Games/Open-Fortress/lightning_gun.pcf /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/particles/lightning_gun.pcf
cp /home/soders/Games/Open-Fortress/dm_purple.bsp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/maps/dm_purple.bsp
cp /home/soders/Games/Open-Fortress/gm_flatgrass_ofd.bsp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/gm_flatgrass_ofd.bsp
cp /home/soders/Games/Open-Fortress/hotlinemiami2.vmt /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/crosshairs/hotlinemiami2.vmt
cp /home/soders/Games/Open-Fortress/hotlinemiami2.vtf /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/crosshairs/hotlinemiami2.vtf

echo -e "${GREEN}Patched${NC}"
sleep 3
