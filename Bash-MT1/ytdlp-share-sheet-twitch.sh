#!/bin/bash

link=$(cat)
/home/soders/.local/bin/ytdlp-twitch-videos-1080p $link --max-downloads 1 > /dev/null 2>&1&
