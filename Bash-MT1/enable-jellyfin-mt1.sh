#!/bin/bash

nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=jellyfin org.jellyfin.JellyfinServer > /dev/null 2>&1& exit