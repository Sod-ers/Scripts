#!/bin/sh
sleep 10
nohup /usr/bin/mkchromecast -t  > /dev/null 2>&1&
exit 0
