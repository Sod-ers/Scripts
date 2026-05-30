#!/bin/bash

nohup ffplay -nodisp -autoexit -loglevel 8 -af "volume=1.0" ~/.local/share/sounds/MacOS/stereo/completion-chime.wav >/dev/null 1>/dev/null 2>/dev/null &
