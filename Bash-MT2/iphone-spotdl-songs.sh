#!/bin/bash

source ~/.env
source ~/Configs/spotDL/.env

cp ~/Configs/spotDL/Liked-Songs/config.json ~/.spotdl/config.json
~/.local/bin/spotdl download saved --user-auth --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60" > /dev/null 2>&1&
