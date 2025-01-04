@echo off

XCOPY /y /q /s "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\playlists-v2.0\" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 Radio Tuner\profile\playlists-v2.0\"
XCOPY /y /q /s "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\library-v2.0\" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 Radio Tuner\profile\library-v2.0\"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\radio.sqlite*" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 Radio Tuner\profile\radio.sqlite*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\metadb.sqlite*" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 Radio Tuner\profile\metadb.sqlite*"

rmdir /s /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\backup\profile"
rmdir /s /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\cache"

del /s /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\component-updates\*"
del /s /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\external-tags\*"
del /s /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\lyrics\*"
del /s /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\crash reports\*"
del /s /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\library-error-log.txt"

mkdir "C:\Users\Soders\Programs\foobar2000\profile\"

XCOPY /E /y /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\profile\" "C:\Users\Soders\Programs\foobar2000\profile\"
XCOPY /E /y /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\themes\" "C:\Users\Soders\Programs\foobar2000\themes\"

rmdir /s /q "C:\Users\Soders\Programs\foobar2000\profile\playlists-v2.0"
rmdir /s /q "C:\Users\Soders\Programs\foobar2000\profile\library-v2.0"
rmdir /s /q "C:\Users\Soders\Programs\foobar2000\user-data"
del /s /q "C:\Users\Soders\Programs\foobar2000\profile\metadb.sqlite"
del /s /q "C:\Users\Soders\Programs\foobar2000\profile\autobackup\*"
del /s /q "C:\Users\Soders\Programs\foobar2000\profile\radio.sqlite"

XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Radio Tuner\components\foo_runcmd.dll*" "C:\Users\Soders\Programs\foobar2000\components\foo_runcmd.dll*"