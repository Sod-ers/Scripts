@echo off

XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\aliases.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\aliases.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-aliases.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-aliases.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-chat.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-chat.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-controls.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-controls.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-unbound.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-unbound.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-aliases.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-aliases.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-chat.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-chat.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-controls.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-controls.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-unbound.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-unbound.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\tier.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\tier.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\windows-settings.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\windows-settings.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\volume.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\volume.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\mute.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\mute.cfg*"

"C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\gmod.exe" -steam -novid -nostartupsound -high -con_enable 1 -windowed -noborder +fps_max 240 +cl_showfps 1 -freq 240 -dx9 -nod3d9ex -r_emulate_gl -force-d3d11-no-singlethreaded -threadpool_affinity 1 -gmod_mcore_test 1 -threads 8 -exThreads=8 -cpuCount=8 -heapsize "16777216" -mem_max_heapsize 30000 -maxMem=30000 -malloc=system -processheap -noquicktime -nohltv -nosteamcontroller -nojoy -particles 1 -noforcemaccel -noforcemspd -nomousegrab +mat_disable_fancy_blending +exec autoexec