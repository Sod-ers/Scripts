#!/bin/bash

mkdir /tmp/spotDL/ 2> /dev/null
touch /tmp/spotDL/Automation-Validator.txt

echo "Disabled" > /tmp/spotDL/Automation-Validator.txt

diff --brief <(sort ~/Configs/spotDL/Automation-Status.txt) <(sort /tmp/spotDL/Automation-Validator.txt) >/dev/null
comp_value=$?

cp ~/Configs/spotDL/liked-songs.json ~/.spotdl/config.json
~/.local/bin/spotdl --bitrate 192k --yt-dlp-args "--js-runtimes deno:/home/soders/.deno/bin/deno" download saved --user-auth
else
echo " "
fi
