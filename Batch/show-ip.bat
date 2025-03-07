@echo off
color a
ipconfig | findstr /R /C:"IPv4 Address"
Pause
