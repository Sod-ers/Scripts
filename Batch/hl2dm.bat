@echo off

XCOPY /y /q /s "E:\GitHub\Configs\Open-Fortress\logos" "C:\program files (x86)\steam\steamapps\common\Half-Life 2 Deathmatch\hl2mp\materials\vgui\logos\"
XCOPY /y /q /s "E:\GitHub\Configs\Open-Fortress\sprays.cfg" "C:\program files (x86)\steam\steamapps\common\Half-Life 2 Deathmatch\hl2mp\cfg\sprays.cfg*"

start steam://rungameid/320 -steam -novid -nostartupsound -high -con_enable 1 -windowed +fps_max 240 +cl_showfps 1 -freq 240 -force-d3d11-no-singlethreaded -threadpool_affinity 1 -threads 8 -exThreads=8 -cpuCount=8 -heapsize "16777216" -mem_max_heapsize 30000 -maxMem=30000 -malloc=system -processheap -noquicktime -nohltv -nosteamcontroller -nojoy -particles 1 -noforcemaccel -noforcemspd -nomousegrab +mat_disable_fancy_blending +exec autoexec