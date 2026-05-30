#!/bin/bash

if pgrep -f "jellyfin-mpv-shim" > /dev/null
then
    echo "Running"
else
    echo "Stopped"
nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=jellyfin-mpv-shim com.github.iwalton3.jellyfin-mpv-shim > /dev/null 2>&1&
fi
