#!/bin/bash

Xephyr -screen 1920x1080 :1 > /dev/null 2>&1&
sleep 0.25
DISPLAY=:1 openbox & DISPLAY=:1 wine "/home/soders/.steam/debian-installation/steamapps/common/Source SDK Base 2013 Multiplayer/bin/hammerplusplus.exe"
