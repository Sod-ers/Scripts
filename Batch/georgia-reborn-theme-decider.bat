@echo off

SET hour=%time:~0,2%

SET purple=True
IF %hour% leq 8 SET purple=False
IF %hour% geq 14 SET purple=False

IF "%purple%"=="True" (
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\patches\foo_osd_purple_georgia.dll.cfg*" "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\configuration\foo_osd.dll.cfg*"
start "" "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\foobar2000.exe" "/runcmd=Playback/Volume/Set to -21 dB" /play
exit
)

IF "%purple%"=="False" (
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\patches\foo_osd_orange_georgia.dll.cfg*" "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\configuration\foo_osd.dll.cfg*"
start "" "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\foobar2000.exe" "/runcmd=Playback/Volume/Set to -21 dB" /play
exit
)