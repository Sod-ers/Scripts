@echo off

del /s /q "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\download\maps\"

XCOPY /y /q /s "E:\Games\GMod\maps\" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\download\maps\"