#!/bin/bash

binge_playlist_url=$(cat ~/Configs/YTDLP/binge-playlist-url.txt)

~/Scripts/delete-empty-media-directories.sh && ~/Scripts/delete-empty-media-directories-2.sh

~/.local/bin/ytdlp --match-filter '!was_live & original_url!*=/shorts/' $binge_playlist_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-random --max-downloads 10 --sleep-interval 60 --max-sleep-interval 120 --sponsorblock-remove sponsor,selfpromo --download-archive ~/Configs/YTDLP/watch-history.txt > /dev/null 2>&1&
