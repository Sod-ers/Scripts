@echo off

cd E:\GitHub\GMod-Resources
git pull https://github.com/Sod-ers/GMod-Resources.git
cd E:\GitHub\Configs
git pull https://github.com/Sod-ers/Configs.git
cd E:\GitHub\MetroSteam
git pull https://github.com/RoseTheFlower/MetroSteam.git

XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\test.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\test.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\test-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\test-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\server.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\server.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\aliases.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\aliases.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-aliases.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-aliases.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-chat.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-chat.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-controls.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-controls.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-unbound.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-unbound.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-aliases.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-aliases.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-chat.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-chat.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-controls.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-controls.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-unbound.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-unbound.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\tier.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\tier.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\settings.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\settings.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\volume.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\volume.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\mute.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\mute.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-easy-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-easy-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-hard-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-hard-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\bb-climb-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\bb-climb-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-bhop-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-bhop-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-public-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-public-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\stellar-easy-autoexec.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\stellar-easy-autoexec.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\chat.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\chat.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\sensitivity.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\sensitivity.cfg*"
XCOPY /y /q "E:\Documents\Configs\GMod\BB\mvp.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\mvp.cfg*"
XCOPY /y /q /s "E:\Documents\Configs\GMod\BB\outfits" "C:\program files (x86)\steam\steamapps\common\GarrysMod\garrysmod\data\bb_servers\outfits\"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\tier.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\tier.cfg*"
XCOPY /y /q "E:\GitHub\GMod-Resources\CFG\sprays.cfg" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\cfg\sprays.cfg*"
XCOPY /y /q /s "E:\GitHub\Configs\Open-Fortress\logos" "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\materials\vgui\logos\"

XCOPY /y /q /s "E:\GitHub\Configs\Open-Fortress\logos" "C:\program files (x86)\steam\steamapps\common\Half-Life 2 Deathmatch\hl2mp\materials\vgui\logos\"
XCOPY /y /q /s "E:\GitHub\Configs\Open-Fortress\sprays.cfg" "C:\program files (x86)\steam\steamapps\common\Half-Life 2 Deathmatch\hl2mp\cfg\sprays.cfg*"

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
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\volume.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\volume.cfg*"
XCOPY /y /q "E:\GitHub\Configs\Open-Fortress\practice.cfg" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\cfg\practice.cfg*"
XCOPY /y /q /s "E:\GitHub\Configs\Open-Fortress\logos" "C:\Program Files (x86)\Steam\steamapps\sourcemods\open_fortress\materials\vgui\logos\"

XCOPY /y /q "E:\GitHub\MetroSteam\notifications.custom.css" "C:\Program Files (x86)\Steam\steamui\skins\MetroSteam\notifications.custom.css*"
XCOPY /y /q "E:\GitHub\MetroSteam\libraryroot.custom.css" "C:\Program Files (x86)\Steam\steamui\skins\MetroSteam\libraryroot.custom.css*"
