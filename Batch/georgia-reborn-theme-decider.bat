@echo off

SET hour=%time:~0,2%

SET purple=True
IF %hour% leq 9 SET purple=False
IF %hour% geq 15 SET purple=False

IF "%purple%"=="True" (
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\patches\foo_osd_purple.dll.cfg*" "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\configuration\foo_osd.dll.cfg*"
start "" "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\foobar2000.exe" "/runcmd=Playback/Volume/Set to -21 dB" /play
exit
)

IF "%purple%"=="False" (
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\patches\foo_osd_orange.dll.cfg*" "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\configuration\foo_osd.dll.cfg*"
start "" "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\foobar2000.exe" "/runcmd=Playback/Volume/Set to -21 dB" /play
exit
)