#!/bin/bash

link=$(cat)
~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --max-downloads 1 --sponsorblock-remove sponsor,selfpromo > /dev/null 2>&1&
