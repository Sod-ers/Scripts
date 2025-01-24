
```table-of-contents
```
### Table of Contents:
| Chapter:                                                                    |
| --------------------------------------------------------------------------- |
| [Linux](https://github.com/Sod-ers/Scripts/blob/main/Commands.md#linux)     |
| [Windows](https://github.com/Sod-ers/Scripts/blob/main/Commands.md#windows) |
| [Misc](https://github.com/Sod-ers/Scripts/blob/main/Commands.md#misc)       |
### Linux:
| Command:                                                                                                                                                                                                 | Description:                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| file:///home/soders/Downloads/                                                                                                                                                                           | Direct path to file.                                                                                |
| nmcli con up insertnetworkprofilenamehere                                                                                                                                                                | Change network profile.                                                                             |
| redshift -x                                                                                                                                                                                              | Reset Redshift.                                                                                     |
| xfwm4                                                                                                                                                                                                    | Starts the window manager. Add to startup programs if it fails often/if you boot without a monitor. |
| xfce4-panel -r                                                                                                                                                                                           | Restarts the panel.                                                                                 |
| wine /home/soders/Programs/Mp3tag.exe                                                                                                                                                                    | Open program with Wine.                                                                             |
| echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable jammy main" \| sudo tee /etc/apt/sources.list.d/mullvad.list | Fixes Mullvad updates for Mint.                                                                     |
| git config pull.rebase false<br>git pull origin main<br>git checkout main<br>git add .<br>git commit -m "$(date +"%D  %I:%M:%S %p")"<br>git push origin main                                             | Fix repo's that go out of sync.                                                                     |
| git remote set-url origin git@github.com:Sod-ers/Scripts.git                                                                                                                                             | Sets the origin for the repo.                                                                       |
| wmctrl -r ":ACTIVE:" -e 0,1920,0,1920,1080                                                                                                                                                               | Move programs to center monitor.                                                                    |
| wmctrl -r ":ACTIVE:" -e 0,0,0,1920,1080                                                                                                                                                                  | Move programs to left monitor.                                                                      |
| wmctrl -r ":ACTIVE:" -e 0,3840,0,1920,1080                                                                                                                                                               | Move programs to right monitor.                                                                     |
### Windows:
| Command:                                                                                                                    | Description:                                         |
| --------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------- |
| file://C:\User\Soders\Downloads\                                                                                            | Direct path to file.                                 |
| del /s /q /f *.nfo *.flac folder.jpg folder.png folder.jpeg logo.png logo.jpg logo.jpeg *.mp3                               | Deletes files from folder.                           |
| cmd /k cd "C:\User\Soders\Downloads"                                                                                        | Execute a command & prevent window from closing.     |
| %windir%\system32\mmsys.cpl                                                                                                 | Open legacy playback devices.                        |
| %windir%\system32\taskmgr.exe /7                                                                                            | Open task manager.                                   |
| C:\windows\system32\joy.cpl                                                                                                 | Open legacy gamepad tester.                          |
| rundll32.exe powrprof.dll,SetSuspendState 0,1,0                                                                             | Sleep.                                               |
| rundll32.exe User32.dll,LockWorkStation                                                                                     | Lock.                                                |
| shutdown.exe /R /T 0                                                                                                        | Restart.                                             |
| shutdown.exe /s /t 0                                                                                                        | Shutdown.                                            |
| C:\Windows\System32\SystemPropertiesProtection.exe                                                                          | Open system protection.                              |
| calculator:                                                                                                                 | Open calculator.                                     |
| control desk.cpl,,@screensaver                                                                                              | Start screensaver.                                   |
| explorer shell:AppsFolder                                                                                                   | Open Windows Store apps directory.                   |
| Ms-settings:system                                                                                                          | Open settings.                                       |
| PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('lorem ipsum')"         | Show windows message.                                |
| rundll32 inetcpl.cpl ClearMyTracksByProcess 1                                                                               | Clear runbox history.                                |
| explorer "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"                                           | Taskbar icons directory.                             |
| explorer “C:\Users\*\AppData\Roaming\Microsoft\Windows\Network Shortcuts\EXAMPLE-NETWORK-SHARE                              | Network shortcuts directory.                         |
| "C:\Program Files\Mozilla Firefox\firefox.exe" https://gs.statcounter.com/os-market-share/desktop/worldwide                 | Open a website.                                      |
| taskkill /F /IM obs64.exe                                                                                                   | Stop OBS recording & close app.                      |
| start /d "C:\Program Files (x86)\Steam\steamapps\common\OBS Studio\bin\64bit" obs64.exe --startrecording --minimize-to-tray | Start OBS, minimized in tray.                        |
| steam://connect/96.44.144.137:27015                                                                                         | Connect to a Steam server.                           |
| steam://open/library                                                                                                        | Open Steam library.                                  |
| steam://open/servers                                                                                                        | Open Steam servers.                                  |
| steam://openurl/https://help.steampowered.com/en/accountdata/                                                               | Open any url in Steam.                               |
| start "" "C:\User\Soders\VLC Player\vlc.exe"                                                                                | Start a program from cmd.                            |
| winget export -o "C:\User\Soders\Downloads\export.txt"                                                                      | Export list of installed programs winget recognizes. |
| del /s /q "C:\Users\Soders\Downloads\file.txt"                                                                              | Delete a file.                                       |
| del /s /q C:\Users\Soders\Downloads\*                                                                                       | Delete all files in a directory.                     |
| rmdir /s /q "C:\Users\Soders\Downloads\Directory-to-be-deleted"                                                             | Delete a directory.                                  |
### Misc:
| Command:                                     | Description:                                         |
| -------------------------------------------- | ---------------------------------------------------- |
| ftp://user@server/folder/                    | FTP format/structure.                                |
| --break-on-existing                          | [yt-dlp](https://github.com/yt-dlp/yt-dlp) argument. |
| -a, --batch-file FILE                        | [yt-dlp](https://github.com/yt-dlp/yt-dlp) argument. |
| exiftool -All= <br>exiftool -delete_original | Remove all metadata.                                 |
