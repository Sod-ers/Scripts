#!/bin/bash

videos_in_server=$(find "/home/soders/Jellyfin Server Media/YouTube" -maxdepth 3 -name '*.mp4' | wc -l)
echo $videos_in_server



# Conditional statement for 0 files found.

# echo "Number of files: " $count
# if [ "$count" > "0" ]; then
#     echo "Import $count files"
# else
#     echo "**** No files found ****"
# fi
