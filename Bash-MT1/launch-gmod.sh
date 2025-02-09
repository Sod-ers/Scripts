#!/bin/bash

cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
cp /home/soders/Configs/GMod/BB/mvp.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/mvp.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/sprays.cfg
cp -r /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/logos/* /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/materials/vgui/logos/
# LUTRIS_SKIP_INIT=1 flatpak run net.lutris.Lutris lutris:rungameid/1
steam steam://rungameid/4000
