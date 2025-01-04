@echo off

SET hour=%time:~0,2%

SET purple=True
IF %hour% leq 9 SET purple=False
IF %hour% geq 15 SET purple=False

IF "%purple%"=="True" (
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\patches\foo_ui_columns_purple.dll.cfg*" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\configuration\foo_ui_columns.dll.cfg*"
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\patches\main-purple.js*" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\foo_spider_monkey_panel\packages\{28AC1EBE-9010-459E-8886-8FFDC8705716}\main.js*"
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\patches\foo_osd_purple.dll.cfg*" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\configuration\foo_osd.dll.cfg*"
start "" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\foobar2000.exe" "/runcmd=Playback/Volume/Set to -21 dB" /play
exit
)

IF "%purple%"=="False" (
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\patches\foo_ui_columns_orange.dll.cfg*" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\configuration\foo_ui_columns.dll.cfg*"
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\patches\main-orange.js*" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\foo_spider_monkey_panel\packages\{28AC1EBE-9010-459E-8886-8FFDC8705716}\main.js*"
XCOPY /E /y "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\patches\foo_osd_orange.dll.cfg*" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\configuration\foo_osd.dll.cfg*"
start "" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\foobar2000.exe" "/runcmd=Playback/Volume/Set to -21 dB" /play
exit
)