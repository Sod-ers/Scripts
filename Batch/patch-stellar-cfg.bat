@echo off

del /s /q "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\autoexec.cfg*"

XCOPY /y /q "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\autoexec.cfg*"