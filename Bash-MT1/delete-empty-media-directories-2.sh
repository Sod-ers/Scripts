#!/bin/bash

find ~/Videos/YouTube/ -mindepth 1 -type d |
while read empty
do
find "$empty" -mindepth 1    -type d | read && continue
find "$empty" -iname '*.mp4' -type f | read && continue
rm -r "$empty"
done
