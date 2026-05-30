#!/bin/bash

pkill vlc
pkill mpv
pkill mkchromecast
pulseaudio -k

chmod +x ~/Scripts/hourly-chime.sh
chmod +x ~/Scripts/completion-chime.sh
chmod -x ~/Scripts/switch-audios.sh

~/Scripts/ytdlp-auto-startup.sh

shutdown -c
