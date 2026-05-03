#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

find ~/.steam/steam/steamapps/common/GarrysMod/garrysmod/models/bb/soders/ -type f -name "*.sw.vtx" | cut -c 81-
echo -e "${RED}Press any key to delete .sw.vtx files...${NC}"
while true; do
read -rsn1 key
if [[ -n "$key" ]]; then
find ~/.steam/steam/steamapps/common/GarrysMod/garrysmod/models/bb/soders/ -name \*.sw.vtx -type f -delete
echo -e "${GREEN}.sw.vtx files deleted.${NC}"
break
fi
done
