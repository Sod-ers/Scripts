#!/bin/bash

link=$(cat)
~/.local/bin/ytdlp $link --sponsorblock-remove sponsor,selfpromo --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --js-runtimes deno:/home/soders/.deno/bin/deno --max-downloads 1 --exec ~/Scripts/completion-chime.sh > /dev/null 2>&1&
