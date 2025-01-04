#!/bin/bash

link=$(cat)
/home/soders/.local/bin/ytdlp-videos $link --max-downloads 1 && /home/soders/Scripts/delete-empty-media-directories-mt1.sh > /dev/null 2>&1&
