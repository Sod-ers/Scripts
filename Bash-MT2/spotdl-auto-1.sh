#!/bin/bash

cp ~/Configs/spotDL/first-listen.json ~/.spotdl/config.json
~/.local/bin/spotdl --yt-dlp-args "--sleep-interval 30 --max-sleep-interval 60" --bitrate 192k download all-user-saved-albums --user-auth
