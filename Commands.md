
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
| Command:                         | Description:         |
| -------------------------------- | -------------------- |
| file://C:\User\Soders\Downloads\ | Direct path to file. |
### Misc:
| Command:                  | Description:                                         |
| ------------------------- | ---------------------------------------------------- |
| ftp://user@server/folder/ | FTP format/structure.                                |
| --break-on-existing       | [yt-dlp argument.](https://github.com/yt-dlp/yt-dlp) |
| -a, --batch-file FILE     | [yt-dlp argument.](https://github.com/yt-dlp/yt-dlp) |
