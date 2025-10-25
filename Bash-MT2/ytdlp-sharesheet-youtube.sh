#!/bin/bash

link=$(cat)
~/.local/bin/ytdlp $link --sponsorblock-remove sponsor,selfpromo --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --max-downloads 1 > /dev/null 2>&1&
