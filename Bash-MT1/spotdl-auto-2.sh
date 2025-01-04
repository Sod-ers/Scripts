#!/bin/bash

source /home/soders/Configs/spotDL/.env

cd /home/soders/Music/Playlists/
# cp /home/soders/Configs/spotDL/Windows-Playlists/config.json /home/soders/.spotdl/config.json
# /home/soders/.local/bin/spotdl-app download $spotify_playlists --m3u "{list} - Windows"
# cp /home/soders/Configs/spotDL/Linux-Playlists/config.json /home/soders/.spotdl/config.json
# /home/soders/.local/bin/spotdl-app download $spotify_playlists --m3u "{list} - Linux"
cp /home/soders/Configs/spotDL/Foobar-Playlists/config.json /home/soders/.spotdl/config.json
/home/soders/.local/bin/spotdl-app download $spotify_playlists --m3u "{list} - Foobar"


cp /home/soders/Configs/spotDL/Liked-Songs/config.json /home/soders/.spotdl/config.json
/home/soders/.local/bin/spotdl-app download saved --user-auth
