#!/bin/bash

# Fuck Google
# for putting popup ads in Google Assistant
# interrupting automations & forcing users to interact with ads
# to use hardware paid for years ago

# Ambient sound URLs used by Home hardware:
# https://www.gstatic.com/voice_delight/sounds/long/brook.mp3
# https://www.gstatic.com/voice_delight/sounds/long/oscillating_fan.mp3
# https://www.gstatic.com/voice_delight/sounds/long/fireplace.mp3
# https://www.gstatic.com/voice_delight/sounds/long/forest.mp3
# https://www.gstatic.com/voice_delight/sounds/long/country_night.mp3
# https://www.gstatic.com/voice_delight/sounds/long/ocean.mp3
# https://www.gstatic.com/voice_delight/sounds/long/rain.mp3
# https://www.gstatic.com/voice_delight/sounds/long/river.mp3
# https://www.gstatic.com/voice_delight/sounds/long/thunder.mp3
# https://www.gstatic.com/voice_delight/sounds/long/pink_noise.mp3

RED='\033[0;31m'
NC='\033[0m'

printf "\033]0;%s\a" "Bedtime"

shutdown -c
echo -e "${RED}Authentication required..${NC}"
sudo shutdown +480 --no-wall

chmod -x ~/Scripts/hourly-chime.sh
chmod -x ~/Scripts/completion-chime.sh

cvlc -q --loop ~/Audio/river.mp3 > /dev/null 2>&1&
mpv ~/Audio/river.mp3 --no-video --loop --no-terminal &

echo ⠀⠀⠀⣠⣴⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣄⠀⠀⠀
echo ⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀
echo ⠀⠀⣿⣿⣿⣿⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢹⣿⣿⣿⣿⠀⠀
echo ⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⣤⣤⣤⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⠛⠛⠛⠻⠿⢿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⣤⣄⣀⣀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⠻⠿⠿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠹⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠘⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⣀⣀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣷⡀⠀⠀⠀⠸⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⣿⣿⣿⣶⣄⠀⠀⠀⠀⢻⣿⣿⣿⣷⠀⠀⠀⠀⢻⣿⣿⣿⡇⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸⣿⣿⣿⣿⠀⠀
echo ⠀⠀⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⢿⣿⣿⣿⡆⠀⠀⠀⢸⣿⣿⣿⣷⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀
echo ⠀⠀⠿⠿⠿⠿⠿⠿⠄⠀⠀⠀⠸⠿⠿⠿⠇⠀⠀⠀⠀⠿⠿⠿⠿⠀⠀⠀⠀⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠟⠋⠀⠀⠀

/usr/bin/mkchromecast -s --control
