#!/bin/bash

link=$(cat)
echo "$link" >> ~/Configs/YTDLP/youtube-channel-urls.txt
awk -i inplace '!seen[$0]++' ~/Configs/YTDLP/youtube-channel-urls.txt
