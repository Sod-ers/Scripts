#!/bin/bash

rm -rf ~/Videos/YouTube/Soders/*
find "/home/soders/Videos/YouTube/" -type d -empty -delete
find "/home/soders/Videos/VODs/" -type d -empty -delete
find "/home/soders/Videos/Shows/" -type d -empty -delete
find "/home/soders/Videos/Movies/" -type d -empty -delete
find "/home/soders/Videos/Other Shows/" -type d -empty -delete
find "/home/soders/Videos/Other Movies/" -type d -empty -delete

~/Scripts/delete-empty-media-directories-2.sh
