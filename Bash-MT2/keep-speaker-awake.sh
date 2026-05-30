#!/bin/bash

ffplay -nodisp -autoexit -loglevel 8 -af "afade=t=out:st=3:d=1" ~/.local/share/sounds/MacOS/stereo/keep-speaker-awake.wav
