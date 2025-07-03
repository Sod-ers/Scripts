@echo off

XCOPY /y /q /s "E:\GitHub\GMod-Resources\Dark-Theme\Windows\garrysmod\addons\dark-theme" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\addons\dark-theme\"

del /s /q "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\backgrounds\"
XCOPY /y /q /s "E:\Games\GMod\backgrounds\" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\backgrounds\"