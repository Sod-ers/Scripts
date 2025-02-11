#!/bin/bash

source ~/.env
source ~/Configs/spotDL/.env

cp ~/Configs/spotDL/Saved-Albums/config.json ~/.spotdl/config.json
~/.local/bin/spotdl-app download all-user-saved-albums --user-auth > /dev/null 2>&1&