#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

cp -r ~/Games/Open-Fortress/custom ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/custom
cp ~/Games/Open-Fortress/lightning_gun.pcf ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/particles/lightning_gun.pcf
cp ~/Games/Open-Fortress/dm_purple.bsp ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/maps/dm_purple.bsp
cp ~/Games/Open-Fortress/gm_flatgrass_ofd.bsp ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/gm_flatgrass_ofd.bsp
cp ~/Games/Open-Fortress/hotlinemiami2.vmt ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/crosshairs/hotlinemiami2.vmt
cp ~/Games/Open-Fortress/hotlinemiami2.vtf ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/crosshairs/hotlinemiami2.vtf

echo -e "${GREEN}Patched${NC}"
sleep 3