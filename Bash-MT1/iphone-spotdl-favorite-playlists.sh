#!/bin/bash

source /home/soders/.env

source /home/soders/Configs/spotDL/.env

cp /home/soders/Configs/spotDL/Foobar-Playlists/config.json /home/soders/.spotdl/config.json
/home/soders/.local/bin/spotdl-app download $spotify_playlists --m3u "{list} - Foobar" > /dev/null 2>&1&
