#!/bin/bash

cp ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
cp ~/Configs/GMod/BB/mvp.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/mvp.cfg
cp ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/sprays.cfg
cp -r ~/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/logos/* ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/vgui/logos/

# LUTRIS_SKIP_INIT=1 flatpak run net.lutris.Lutris lutris:rungameid/1
steam steam://rungameid/4000
