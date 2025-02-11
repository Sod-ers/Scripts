#!/bin/bash

source ~/.env

scp $MT1:~/Configs/spotDL/.env ~/Configs/spotDL/.env 2> /dev/null

source ~/Configs/spotDL/.env

cp ~/Configs/spotDL/Foobar-Playlists/config.json ~/.spotdl/config.json
~/.local/bin/spotdl-app download $spotify_playlists > /dev/null 2>&1&