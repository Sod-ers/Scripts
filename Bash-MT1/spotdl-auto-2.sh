#!/bin/bash

mkdir /tmp/spotDL/ 2> /dev/null
touch /tmp/spotDL/Automation-Validator.txt

echo "Disabled" > /tmp/spotDL/Automation-Validator.txt

diff --brief <(sort ~/Configs/spotDL/Automation-Status.txt) <(sort /tmp/spotDL/Automation-Validator.txt) >/dev/null
comp_value=$?

source ~/Configs/spotDL/.env

cd ~/Music/Playlists/
# cp ~/Configs/spotDL/windows-playlist.json ~/.spotdl/config.json
# ~/.local/bin/spotdl download $favorite_playlists --m3u "{list} - Windows"
# cp ~/Configs/spotDL/linux-playlist.json ~/.spotdl/config.json
# ~/.local/bin/spotdl download $favorite_playlists --m3u "{list} - Linux"
cp ~/Configs/spotDL/foobar-playlist.json ~/.spotdl/config.json
~/.local/bin/spotdl download $favorite_playlists --m3u "{list} - Foobar"

cp ~/Configs/spotDL/liked-songs.json ~/.spotdl/config.json
~/.local/bin/spotdl download saved --user-auth
else
echo " "
fi
