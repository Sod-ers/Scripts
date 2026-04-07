#!/bin/bash

source ~/.env

pkill vlc
pkill mpv
pkill mkchromecast
pulseaudio -k

chmod +x ~/Scripts/hourly-chime.sh
chmod +x ~/Scripts/completion-chime.sh
~/Scripts/ytdlp-auto-startup.sh

shutdown -c
