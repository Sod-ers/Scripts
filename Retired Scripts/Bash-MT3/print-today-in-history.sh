#!/bin/bash

date "+%b" > /tmp/todays-date-month.txt
date "+%d" > /tmp/todays-date-day.txt
todays_date_month=$(cat /tmp/todays-date-month.txt)
todays_date_day=$(cat /tmp/todays-date-day.txt)
calendar|grep $todays_date_month|grep $todays_date_day|cut -d\* -f3 > /tmp/today-in-history.txt
sed "s/\b$todays_date_month\b//g" "/tmp/today-in-history.txt" > /tmp/today-in-history-revision1.txt
sed "s/\b$todays_date_day\b//g" "/tmp/today-in-history-revision1.txt" > /tmp/today-in-history-revision2.txt
sed 's/^[ \t]*//' "/tmp/today-in-history-revision2.txt" > /tmp/today-in-history-revision3.txt
sed 's/[^[:print:]]/replacement/g' /tmp/today-in-history-revision3.txt > /tmp/today-in-history-revision4.txt
sed '/^[[:space:]]*$/d' /tmp/today-in-history-revision4.txt > /tmp/today-in-history-revision5.txt
sed -e 's/^/- /' /tmp/today-in-history-revision5.txt > /tmp/today-in-history-refined.txt
today_in_history=$(cat /tmp/today-in-history-refined.txt)
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
date "+%-d`DaySuffix`" > /tmp/todays-date.txt
date "+%B" > /tmp/todays-date-month-exp.txt
todays_date_month_exp=$(cat /tmp/todays-date-month-exp.txt)
todays_date=$(cat /tmp/todays-date.txt)
echo "What happened on $todays_date_month_exp $todays_date?" >> /dev/usb/lp0
echo "What happened on $todays_date_month_exp $todays_date?" >> /dev/usb/lp1
echo "What happened on $todays_date_month_exp $todays_date?" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo " " >> /dev/usb/lp0
echo " " >> /dev/usb/lp1
echo " " >> /dev/usb/lp2
echo "$today_in_history" >> /dev/usb/lp0; echo "$today_in_history" >> /dev/usb/lp1; echo "$today_in_history" >> /dev/usb/lp2
lpr -o fit-to-page -o media=Custom.70x25mm -P EPSON_TM-T20II /home/soders/Pictures/print.jpg
sleep 30
lprm