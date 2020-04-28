#! /bin/bash -x

IsFullTime=1
IsPartTime=2

empcheck=$(($RANDOM%3))
ratePerHr=20

if [ $empcheck -eq $IsFullTime ]; then
	workingHour=8
elif [ $empcheck -eq $IsPartTime ]; then
	workinghour=4
else
	workinghour=0
fi
sal=$(($workinghour*$ratePerHr))
echo $sal


