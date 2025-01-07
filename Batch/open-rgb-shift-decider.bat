@echo off

call "C:\Users\Soders\AppData\Roaming\OpenRGB\env.cmd"

SET hour=%time:~0,2%

SET purple=True
IF %hour% leq %NIGHTSHIFT_DISABLED_TIME% SET purple=False
IF %hour% geq %NIGHTSHIFT_ENABLED_TIME% SET purple=False

IF "%purple%"=="True" (
start "" "C:\Programs\OpenRGB\OpenRGB.exe" --startminimized --profile C:\Users\Soders\AppData\Roaming\OpenRGB\Dracula.orp
exit
)

IF "%purple%"=="False" (
start "" "C:\Programs\OpenRGB\OpenRGB.exe" --startminimized --profile C:\Users\Soders\AppData\Roaming\OpenRGB\Night-Shift.orp
exit
)