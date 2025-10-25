#!/bin/bash

mkdir /tmp/spotDL/ 2> /dev/null
touch /tmp/spotDL/Automation-Validator.txt

echo "Disabled" > /tmp/spotDL/Automation-Validator.txt

diff --brief <(sort ~/Configs/spotDL/Automation-Status.txt) <(sort /tmp/spotDL/Automation-Validator.txt) >/dev/null
comp_value=$?

source ~/Configs/spotDL/.env

# cd ~/Music/Playlists/
# cp ~/Configs/spotDL/foobar-playlist.json ~/.spotdl/config.json
# ~/.local/bin/spotdl --bitrate 192k download $spotify_playlists --m3u "{list} - Foobar" --sleep-interval 30 --max-sleep-interval 60

cp ~/Configs/spotDL/liked-songs.json ~/.spotdl/config.json
~/.local/bin/spotdl --bitrate 192k download saved --user-auth --sleep-interval 30 --max-sleep-interval 60
else
echo " "
fi
