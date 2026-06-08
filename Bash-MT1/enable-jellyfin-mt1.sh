#!/bin/bash

nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=jellyfin org.jellyfin.JellyfinServer > /dev/null 2>&1&
# nohup sleep 15 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=jellyfin-mpv-shim com.github.iwalton3.jellyfin-mpv-shim > /dev/null 2>&1& exit
