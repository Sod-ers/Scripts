#!/bin/bash

if [ ! -f ~/Configs/YTDLP/youtube-channel-sorted-popular.txt ]; then
echo fail
else
if [ ! -s ~/Configs/YTDLP/youtube-channel-sorted-popular.txt ]; then
echo fail
else
echo success
fi
fi
