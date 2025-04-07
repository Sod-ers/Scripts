#!/bin/bash

cp ~/Configs/spotDL/first-listen.json ~/.spotdl/config.json
~/.local/bin/spotdl --bitrate 192k download all-user-saved-albums --user-auth
