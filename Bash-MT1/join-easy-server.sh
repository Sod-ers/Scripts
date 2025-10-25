#!/bin/bash

cp ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-easy-autoexec.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
cp ~/Configs/GMod/BB/mvp.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/mvp.cfg
cp ~/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/tier.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/tier.cfg
cp ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/sprays.cfg
cp -r ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/logos/* ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/vgui/logos/

~/.local/bin/gmodpatchtool --skip-exit-prompt --no-sourcescheme

steam steam://rungameid/4000
