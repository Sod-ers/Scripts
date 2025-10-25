#!/bin/bash

cp ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/test-autoexec.cfg ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/autoexec.cfg

~/.local/bin/gmodpatchtool --skip-exit-prompt --no-sourcescheme

steam steam://rungameid/4000
