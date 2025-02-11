#!/bin/bash

link=$(cat)
~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/video-1080p.conf --max-downloads 1 > /dev/null 2>&1&