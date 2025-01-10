#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD scp $MT1:/home/soders/Configs/spotDL/.env /home/soders/Configs/spotDL/.env 2> /dev/null

source /home/soders/Configs/spotDL/.env

cp /home/soders/Configs/spotDL/Foobar-Playlists/config.json /home/soders/.spotdl/config.json
/home/soders/.local/bin/spotdl-app download $spotify_playlists > /dev/null 2>&1&
