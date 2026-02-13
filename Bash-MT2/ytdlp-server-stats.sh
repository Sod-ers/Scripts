#!/bin/bash

mkdir /tmp/YTDLP/
touch /tmp/YTDLP/free-space.txt
touch /tmp/YTDLP/used-space.txt
touch /tmp/YTDLP/video-count.txt
~/Scripts/check-free-space.sh > /tmp/YTDLP/free-space.txt
~/Scripts/ytdlp-check-used-space.sh > /tmp/YTDLP/used-space.txt
~/Scripts/ytdlp-count-videos-in-server.sh > /tmp/YTDLP/video-count.txt
free_space=$(cat /tmp/YTDLP/free-space.txt)
used_space=$(cat /tmp/YTDLP/used-space.txt)
video_count=$(cat /tmp/YTDLP/video-count.txt)

echo 🆓"$free_space"G⠀🔽$used_space⠀▶️$video_count
