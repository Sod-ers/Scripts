#!/bin/bash

# Steam Metro theme
echo -e "${YELLOW}Updating Steam Metro theme..${NC}"
cd /tmp/
git clone https://github.com/RoseTheFlower/MetroSteam.git
rsync --progress /tmp/MetroSteam/notifications.custom.css ~/.steam/steam/steamui/skins/MetroSteam/notifications.custom.css
rsync --progress /tmp/MetroSteam/libraryroot.custom.css ~/.steam/steam/steamui/skins/MetroSteam/libraryroot.custom.css
rsync --progress /tmp/MetroSteam/friends.custom.css ~/.steam/steam/steamui/skins/MetroSteam/friends.custom.css
cd ~/
echo -e "${GREEN}Steam Metro theme finished!${NC}"
