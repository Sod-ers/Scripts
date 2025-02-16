#!/bin/bash

DaySuffix() {
    if [ "x`date +%-d | cut -c2`x" = "xx" ]
    then
        DayNum=`date +%-d`
    else
        DayNum=`date +%-d | cut -c2`
    fi

    CheckSpecialCase=`date +%-d`
    case $DayNum in
    0 )
      echo "th" ;;
    1 )
      if [ "$CheckSpecialCase" = "11" ]
      then
        echo "th"
      else
        echo "st"
      fi ;;
    2 )
      if [ "$CheckSpecialCase" = "12" ]
      then
        echo "th"
      else
        echo "nd"
      fi ;;
    3 )
      if [ "$CheckSpecialCase" = "13" ]
      then
        echo "th"
      else
        echo "rd"
      fi ;;
    [4-9] )
      echo "th" ;;
    * )
      return 1 ;;
    esac
}
date "+%-d`DaySuffix`" > /tmp/todays-date-suffix-groceries.txt
todays_date=$(cat /tmp/todays-date-suffix-groceries.txt)
date "+%A, %B $todays_date, %Y" >> /dev/usb/lp0
date "+%A, %B $todays_date, %Y" >> /dev/usb/lp1
date "+%A, %B $todays_date, %Y" >> /dev/usb/lp2
echo " " >> /dev/usb/lp0
echo " " >> /dev/usb/lp1
echo " " >> /dev/usb/lp2
cat /tmp/thermal-print/groceries.md >> /dev/usb/lp0
cat /tmp/thermal-print/groceries.md >> /dev/usb/lp1
cat /tmp/thermal-print/groceries.md >> /dev/usb/lp2
lpr -o fit-to-page -o media=Custom.70x25mm -P EPSON_TM-T20II ~/Pictures/print.jpg
sleep 30
lprm
