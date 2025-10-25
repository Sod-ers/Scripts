#!/bin/bash

~/Scripts/enable-switch-audios-for-obs.sh

/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obs com.obsproject.Studio
