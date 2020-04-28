#! /bin/bash -x


IsFullTime=1
IsPartTime=2

empcheck=$(($RANDOM%3))
ratePerHr=20
case $empcheck in
	$IsFullTime) 
        workingHour=8
	;;
	$IsPartTime)
        workinghour=4
	;;
	*)
        workinghour=0
	;;
esac
let sal=$workinghour*$ratePerHr
echo $sal
