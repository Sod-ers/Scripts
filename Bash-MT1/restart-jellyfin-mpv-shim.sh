#!/bin/bash

flatpak kill com.github.iwalton3.jellyfin-mpv-shim

sleep 1

nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=jellyfin-mpv-shim com.github.iwalton3.jellyfin-mpv-shim > /dev/null 2>&1&
