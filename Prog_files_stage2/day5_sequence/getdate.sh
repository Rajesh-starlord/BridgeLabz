#! /bin/bash -x
#take the daate from user and print the day

read -p "enter year(yyyy)" yyyy
read -p "enter month(mm)" mm
read -p "enter day(dd)"	dd

cdate=`date -d "$yyyy-$mm-$dd"`
day=`echo $cdate | awk -F"," '{print $1}'`
echo $day
