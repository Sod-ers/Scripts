#!/bin/bash

cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
cp /home/soders/Configs/GMod/BB/mvp.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/mvp.cfg

# LUTRIS_SKIP_INIT=1 flatpak run net.lutris.Lutris lutris:rungameid/1
steam steam://rungameid/4000
