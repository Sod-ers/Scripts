TASKKILL /IM OpenRGB.exe /F
start "" "C:\Programs\OpenRGB\OpenRGB.exe" --startminimized --profile C:\Users\Soders\AppData\Roaming\OpenRGB\Off.orp
cmd /c start /wait scrnsave.scr /s && rundll32 user32.dll,LockWorkStation