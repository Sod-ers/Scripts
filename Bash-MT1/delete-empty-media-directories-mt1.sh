#!/bin/bash

rm -rf /home/soders/Videos/YouTube/Soders/*
find "/home/soders/Videos/YouTube/" -type d -empty -delete
find "/home/soders/Videos/VODs/" -type d -empty -delete
find "/home/soders/Videos/Shows/" -type d -empty -delete
find "/home/soders/Videos/Movies/" -type d -empty -delete
find "/home/soders/Videos/Other Shows/" -type d -empty -delete
find "/home/soders/Videos/Other Movies/" -type d -empty -delete

find ~/Videos/YouTube/ -mindepth 1 -type d |
while read empty
do
find "$empty" -mindepth 1    -type d | read && continue
find "$empty" -iname '*.mp4' -type f | read && continue
rm -r "$empty"
done