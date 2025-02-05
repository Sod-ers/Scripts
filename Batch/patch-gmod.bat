@echo off

XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\html\template\main.html" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\html\template\main.html*"
XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\materials\console\background01.vtf" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\materials\console\background01.vtf*"
XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\materials\console\background01_widescreen.vtf" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\materials\console\background01_widescreen.vtf*"
XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\resource\SourceScheme.res" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\resource\SourceScheme.res*"
XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\resource\ClientScheme.res" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\resource\ClientScheme.res*"
XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\resource\ChatScheme.res" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\resource\ChatScheme.res*"
XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\resource\ui\BaseChat.res" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\resource\ui\BaseChat.res*"
XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\resource\ui\TextWindow.res" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\resource\ui\TextWindow.res*"
XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\resource\fonts\csdbig.ttf" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\resource\fonts\"
XCOPY /y /q "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\gamemodes\Icons\logo.png" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\gamemodes\Icons\logo.png*"

del /s /q "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\backgrounds\"
XCOPY /y /q /s "C:\Users\Soders\Programs\GMod-Dark-Theme\GarrysMod\garrysmod\backgrounds\" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\backgrounds\"
