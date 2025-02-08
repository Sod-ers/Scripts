@echo off

XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\alias.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\alias.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\announcers.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\announcers.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\autoexec.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\chat.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\chat.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\colors.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\colors.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\controls.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\controls.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\mute.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\mute.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\settings.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\settings.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\sprays.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\sprays.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\unbound.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\unbound.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\volume.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfgvolume.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\practice.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\practice.cfg*"
XCOPY /y /q /s "E:\GitHub\Configs\Open-Fortress\logos" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\materials\vgui\logos\"

start "" "C:\Program Files (x86)\Steam\steamapps\common\Source SDK Base 2013 Multiplayer\hl2.exe" -game "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress" -steam -novid -nostartupsound -high -con_enable 1 -windowed -noborder +fps_max 240 +cl_showfps 1 -freq 240 -dx9 -nod3d9ex -force-d3d11-no-singlethreaded -threadpool_affinity 1 -threads 8 -exThreads=8 -cpuCount=8 -heapsize "16777216" -mem_max_heapsize 30000 -maxMem=30000 -malloc=system -processheap -noquicktime -cl_forcepreload 1 -nohltv -nosteamcontroller -nojoy -precachefontchars -particles 1 -noforcemaccel -noforcemspd -nomousegrab +mat_disable_fancy_blending +exec autoexec