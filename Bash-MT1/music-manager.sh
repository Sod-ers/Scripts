#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${YELLOW} "
echo "     ;;;;;;;;;;;;;;;;;;;"
echo "     ;;;;;;;;;;;;;;;;;;;"
echo "     ;                 ;"
echo "     ;                 ;"
echo "     ;                 ;"
echo "     ;                 ;"
echo "     ;                 ;"
echo "     ;                 ;"
echo "     ;                 ;"
echo ",;;;;;            ,;;;;;"
echo ";;;;;;            ;;;;;;"
echo ";;;;;;            ;;;;;;"
echo -e "${NC} "
printf "\033]0;%s\a" "Music File Manager"
export PS3=$'\033[0;33mSelect an option: \e[0m'
options=("Copy Music Files for Compression" "Delete Flac Song Files" "Delete Flac Album Files" "Copy Music Files to Windows" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Copy Music Files for Compression")
            rsync -r --progress /mnt/7TBEXT4/Music/Songs/ /mnt/7TBEXT4/Music/Compressed-Songs
            rsync -r --progress /mnt/7TBEXT4/Music/Albums/ /mnt/7TBEXT4/Music/Compressed-Albums
            echo -e "${Green}Ready to compress."
            done
            /home/soders/Scripts/music-manager.sh
            break
            ;;
        "Delete Flac Song Files")
            find "/home/soders/Music/Compressed-Songs/" \( -name '*.flac' \)
            echo -e '\e[30;101mPress any key to delete the files.\e[0m'
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            find "/home/soders/Music/Compressed-Songs/" \( -name '*.flac' \) -delete
            echo -e '\e[30;102mFiles deleted.\e[0m'
            break
            fi
            done
            /home/soders/Scripts/music-manager.sh
            break
            ;;
        "Delete Flac Album Files")
            find "/home/soders/Music/Compressed-Albums/" \( -name '*.flac' \)
            echo -e '\e[30;101mPress any key to delete the files...\e[0m'
            while true; do
            read -rsn1 key
            if [[ -n "$key" ]]; then
            find "/home/soders/Music/Compressed-Albums/" \( -name '*.flac' \) -delete
            rm /home/soders/Music/Compressed-Albums/*/*/cd*.* > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover1.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover2.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover3.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover4.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover5.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover6.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover7.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover8.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover9.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover1.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover2.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover3.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover4.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover5.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover6.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover7.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover8.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover9.jpg > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover1.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover2.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover3.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover4.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover5.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover6.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover7.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover8.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover9.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover1.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover2.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover3.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover4.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover5.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover6.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover7.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover8.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover9.png > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover1.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover2.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover3.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover4.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover6.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover7.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover8.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover9.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover1.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover2.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover3.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover4.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover5.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover6.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover7.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover8.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover9.webp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover1.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover2.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover3.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover4.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover5.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover6.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover7.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover8.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/cover9.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover1.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover2.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover3.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover4.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover5.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover6.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover7.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover8.bmp > /dev/null 2>&1&
            rm /home/soders/Music/Compressed-Albums/*/*/Cover9.bmp > /dev/null 2>&1&
            echo -e '\e[30;102mFiles deleted.\e[0m'
            break
            fi
            done
            /home/soders/Scripts/music-manager.sh
            break
            ;;
            "Copy Music Files to Windows")
            echo "Authorize mounting 2TBNTFS.."
            sudo mount /dev/sdf2 /media/soders/2TBNTFS/
            sudo mount /dev/sde2 /media/soders/2TBNTFS/
            rsync -r --ignore-existing --progress /mnt/7TBEXT4/Music/Songs/ /media/soders/2TBNTFS/Music/Songs/
            rsync -r --ignore-existing --progress /mnt/7TBEXT4/Music/Albums/ /media/soders/2TBNTFS/Music/Albums/
            rsync -r --ignore-existing --progress /home/soders/Music/Videos/ /media/soders/2TBNTFS/Music/Videos/
            rsync -r --ignore-existing --progress /home/soders/Music/Playlists/ /media/soders/2TBNTFS/Music/Playlists/
            rsync -r --ignore-existing --progress /home/soders/Music/Spotify/ /media/soders/2TBNTFS/Music/Spotify/
            rsync -r --ignore-existing --progress /home/soders/Music/Soundcloud/ /media/soders/2TBNTFS/Music/Soundcloud/
            rsync -r --ignore-existing --progress /home/soders/Music/YouTube/ /media/soders/2TBNTFS/Music/YouTube/
            sudo umount /media/soders/2TBNTFS/
            echo "Unmounted 2TBNTFS."
            echo -e "${Green}Files Updated."
            sleep 3
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
