#!/bin/bash

/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=localsend --file-forwarding org.localsend.localsend_app @@u %U @@ > /dev/null 2>&1&
sleep .75
wmctrl -r "LocalSend" -b add,maximized_vert,maximized_horz &
