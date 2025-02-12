#!/bin/bash

source ~/.env
source ~/Configs/spotDL/.env

cp ~/Configs/spotDL/foobar-playlists.json ~/.spotdl/config.json
~/.local/bin/spotdl-app download $spotify_playlists --m3u "{list} - Foobar" > /dev/null 2>&1&