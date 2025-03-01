
| Description:                              | Command:                                                                                                                                                      |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Nvidia always prefer maximum performance. | `nvidia-settings -a '[gpu:1]/GPUPowerMizerMode=1'`                                                                                                            |
| Nvidia always prefer maximum performance. | `nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'`                                                                                                            |
| Disable game controller audio device.     | `pactl set-card-profile alsa_card.usb-ASTRO_Gaming_ASTRO_C40_ff00004b68-00 off`                                                                               |
| Disable game controller audio device.     | `pactl set-card-profile alsa_card.usb-ASTRO_Gaming_ASTRO_C40_ff00004b69-00 off`                                                                               |
| Disable bluetooth.                        | `bash -c "sleep 2; rfkill block bluetooth"`                                                                                                                   |
| Disable VR audio device.                  | `pactl set-card-profile alsa_card.usb-Oculus_Rift_Audio_WMHD317150174-00 off`                                                                                 |
| Disable game controller audio device.     | `pactl set-card-profile alsa_card.usb-Sony_Interactive_Entertainment_DualSense_Wireless_Controller-00 off`                                                    |
| Delay Nextcloud.                          | `bash -c "sleep 25;/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=nextcloud --file-forwarding com.nextcloud.desktopclient.nextcloud @@u %u @@"` |
| Shift decider (Linux).                    | `bash -c "sleep 5;touch /home/soders/Scripts/shift-decider.sh;/home/soders/Scripts/shift-decider.sh"`                                                         |
| Unmute.                                   | `pactl set-sink-mute @DEFAULT_SINK@ 0`                                                                                                                        |
| 100% Volume.                              | `pactl set-sink-volume @DEFAULT_SINK@ 100%`                                                                                                                   |
| 100% Volume fallback.                     | `pactl set-sink-volume 1 100%`                                                                                                                                |
| Update spotDL.                            | `bash -c "pip install --upgrade spotdl"`                                                                                                                      |
| Update YTDLP.                             | `bash -c "/home/soders/.local/bin/ytdlp -U"`                                                                                                                  |
| Start window manager if fails.            | `xfwm4`                                                                                                                                                       |
| xfce-superkey.                            | `xfce-superkey`                                                                                                                                               |
| OpenRGB.                                  | `/opt/Scripts/openrgb.sh`                                                                                                                                     |
| mkChromecast.                             | `/opt/Scripts/mkchromecast.sh`                                                                                                                                |
| Redshift.                                 | `redshift -c "/home/soders/.config/redshift.conf"`                                                                                                            |
| SFPUI.                                    | `/home/soders/Programs/SFP/SFP_UI`                                                                                                                            |
| Disable BB-Tracker.                       | `bash -c "chmod -x /home/soders/.local/bin/bb-tracker-printer.sh"`                                                                                            |
| Declare unlocked.                         | /home/soders/Scripts/iphone-start-declare-unlocked.sh                                                                                                         |
| Jellyfin.                                 | bash -c "sleep 5;/home/soders/Scripts/enable-jellyfin-mt2.sh"                                                                                                 |
| Shift decider (Windows)                   | C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\open-rgb-shift-decider.bat                                                                       |
| Pull & deploy from GitHub.                | C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\git-pull.bat.lnk                                                                                 |
