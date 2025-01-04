@echo off

XCOPY /y /s /e "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\" "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN - Backup\"

XCOPY /y /q /s "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\playlists-v2.0\" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 Georgia ReBORN\profile\playlists-v2.0\"
XCOPY /y /q /s "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\library-v2.0\" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 Georgia ReBORN\profile\library-v2.0\"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\radio.sqlite*" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 Georgia ReBORN\profile\radio.sqlite*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\metadb.sqlite*" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 Georgia ReBORN\profile\metadb.sqlite*"

rmdir /s /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\backup\profile"
rmdir /s /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\cache"

del /s /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\component-updates\*"
del /s /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\external-tags*"
del /s /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\lyrics\*"
del /s /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\crash reports\*"
del /s /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\library-error-log.txt"

mkdir "C:\Users\Soders\Programs\foobar2000\profile\"

XCOPY /E /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\profile\" "C:\Users\Soders\Programs\foobar2000\profile\"
XCOPY /E /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\themes\" "C:\Users\Soders\Programs\foobar2000\themes\"

rmdir /s /q "C:\Users\Soders\Programs\foobar2000\profile\playlists-v2.0"
rmdir /s /q "C:\Users\Soders\Programs\foobar2000\profile\library-v2.0"
rmdir /s /q "C:\Users\Soders\Programs\foobar2000\profile\patches"
del /s /q "C:\Users\Soders\Programs\foobar2000\profile\metadb.sqlite"
del /s /q "C:\Users\Soders\Programs\foobar2000\profile\autobackup\*"
del /s /q "C:\Users\Soders\Programs\foobar2000\profile\radio.sqlite"

XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\ColumnsUILayout.fcl*" "C:\Users\Soders\Programs\foobar2000\components\ColumnsUILayout.fcl*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_beefweb-0.7.fb2k-component*" "C:\Users\Soders\Programs\foobar2000\components\foo_beefweb-0.7.fb2k-component*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_dsp_sqracf-1.0.fb2k-component*" "C:\Users\Soders\Programs\foobar2000\components\foo_dsp_sqracf-1.0.fb2k-component*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_dsp_xgeq.dll*" "C:\Users\Soders\Programs\foobar2000\components\foo_dsp_xgeq.dll*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_jesus.dll*" "C:\Users\Soders\Programs\foobar2000\components\foo_jesus.dll*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_musical_spectrum.dll*" "C:\Users\Soders\Programs\foobar2000\components\foo_musical_spectrum.dll*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_osd.fb2k-component*" "C:\Users\Soders\Programs\foobar2000\components\foo_osd.fb2k-component*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_play_next.fb2k-component*" "C:\Users\Soders\Programs\foobar2000\components\foo_play_next.fb2k-component*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_playlist_revive.dll*" "C:\Users\Soders\Programs\foobar2000\components\foo_playlist_revive.dll*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_runcmd.dll*" "C:\Users\Soders\Programs\foobar2000\components\foo_runcmd.dll*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_skip.fb2k-component*" "C:\Users\Soders\Programs\foobar2000\components\foo_skip.fb2k-component*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_tags.dll*" "C:\Users\Soders\Programs\foobar2000\components\foo_tags.dll*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_texttools.fb2k-component*" "C:\Users\Soders\Programs\foobar2000\components\foo_texttools.fb2k-component*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_ui_columns-2.0.0-beta.1.x86-x64.fb2k-component*" "C:\Users\Soders\Programs\foobar2000\components\foo_ui_columns-2.0.0-beta.1.x86-x64.fb2k-component*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_ui_hacks.dll*" "C:\Users\Soders\Programs\foobar2000\components\foo_ui_hacks.dll*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_uie_panel_splitter.dll*" "C:\Users\Soders\Programs\foobar2000\components\foo_uie_panel_splitter.dll*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\foo_upnp.fb2k-component*" "C:\Users\Soders\Programs\foobar2000\components\foo_upnp.fb2k-component*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\UIHacks.js*" "C:\Users\Soders\Programs\foobar2000\components\UIHacks.js*"
XCOPY /y /q "C:\Users\Soders\Programs\Foobar2000 Georgia ReBORN\components\UIHacks.txt*" "C:\Users\Soders\Programs\foobar2000\components\UIHacks.txt*"
