#!/bin/bash

source ~/.env

scp $MT1:~/Configs/spotDL/.env ~/Configs/spotDL/.env 2> /dev/null

source ~/Configs/spotDL/.env

cp ~/Configs/spotDL/linux-playlists/config.json ~/.spotdl/config.json
~/.local/bin/spotdl download $spotify_playlists --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60" > /dev/null 2>&1&
