#!/bin/bash

xfce4-screenshooter -f -m -d 3 -c -s  "/home/soders/Desktop/$(date -d "today" +"%Y-%m-%d %I-%M-%S %p").png" > /dev/null 2>&1&
