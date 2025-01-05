#!/bin/sh
sleep 3
nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=openrgb org.openrgb.OpenRGB --startminimized > /dev/null 2>&1&
exit 0
