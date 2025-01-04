#!/bin/bash

link=$(cat)
/home/soders/.local/bin/ytdlp-twitch-videos-1080p $link --max-downloads 1 && /home/soders/Scripts/delete-empty-media-directories-mt2.sh > /dev/null 2>&1&
