#!/bin/bash

source ~/.env
source ~/Configs/spotDL/.env

cp ~/Configs/spotDL/Saved-Albums/config.json ~/.spotdl/config.json
~/.local/bin/spotdl download all-user-saved-albums --user-auth --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60" > /dev/null 2>&1&
