#!/bin/bash

cp ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-easy-autoexec.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
cp ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/sprays.cfg
cp -r ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/logos/* ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/vgui/logos/

~/.local/bin/gmodpatchtool --skip-exit-prompt --no-sourcescheme

steam steam://rungameid/4000
