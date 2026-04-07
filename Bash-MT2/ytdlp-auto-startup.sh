#!/bin/bash

if grep -q -e Enabled ~/Documents/Configs/YTDLP/Automation-Status.txt
then
chmod +x ~/Scripts/ytdlp-auto.sh
else
chmod -x ~/Scripts/ytdlp-auto.sh
fi
