@echo off

XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-public-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\autoexec.cfg*"

"C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\gmod.exe" -steam -novid -nostartupsound -high -con_enable 1 -windowed -noborder +fps_max 240 +cl_showfps 1 -freq 240 -dx9 -nod3d9ex -r_emulate_gl -force-d3d11-no-singlethreaded -threadpool_affinity 1 -gmod_mcore_test 1 -threads 8 -exThreads=8 -cpuCount=8 -heapsize "16777216" -mem_max_heapsize 30000 -maxMem=30000 -malloc=system -processheap -noquicktime -nohltv -nosteamcontroller -nojoy -particles 1 -noforcemaccel -noforcemspd -nomousegrab +mat_disable_fancy_blending +exec autoexec