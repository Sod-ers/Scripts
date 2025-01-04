@echo off

XCOPY /y /s "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\playlists-v2.0\" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 CaTRoX (QWR Edition)\profile\playlists-v2.0\"
XCOPY /y /s "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\library-v2.0\" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 CaTRoX (QWR Edition)\profile\library-v2.0\"
XCOPY /y "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\radio.sqlite*" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 CaTRoX (QWR Edition)\profile\radio.sqlite*"
XCOPY /y "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\metadb.sqlite*" "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 CaTRoX (QWR Edition)\profile\metadb.sqlite*"

rmdir /s /q "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\"

XCOPY /y /s "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition) - Backup\" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\"

XCOPY /y /s "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 CaTRoX (QWR Edition)\profile\playlists-v2.0\" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\playlists-v2.0\"
XCOPY /y /s "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 CaTRoX (QWR Edition)\profile\library-v2.0\" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\library-v2.0\"
XCOPY /y "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 CaTRoX (QWR Edition)\profile\radio.sqlite*" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\radio.sqlite*"
XCOPY /y "C:\Users\Soders\Programs\Foobar2000 Data\Foobar2000 CaTRoX (QWR Edition)\profile\metadb.sqlite*" "C:\Users\Soders\Programs\Foobar2000 CaTRoX (QWR Edition)\profile\metadb.sqlite*"
