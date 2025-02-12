#!/bin/bash

source ~/.env
source ~/Configs/spotDL/.env

cp ~/Configs/spotDL/Liked-Songs/config.json ~/.spotdl/config.json
~/.local/bin/spotdl-app download saved --user-auth > /dev/null 2>&1&