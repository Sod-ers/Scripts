#!/bin/bash

cp /home/soders/Configs/GMod/BB/bb-autoexec.cfg /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg
/home/soders/Scripts/disable-bb-tracker.sh
# LUTRIS_SKIP_INIT=1 flatpak run net.lutris.Lutris lutris:rungameid/1
steam steam://rungameid/4000
