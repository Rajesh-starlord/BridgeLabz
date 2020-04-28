#! /bin/bash -x
#unit conversion using case

read -p "enter the unit you want to enter inch/feet/meter --" unit
read -p "enter the value---" val

case $unit in
	"inch")
		feet=`awk "BEGIN {print $val / 12}"`
		echo "$val inch = $feet feet"
	;;
	"feet")
		inch=`awk "BEGIN {print $val * 12}"`
		meter=`awk "BEGIN {print $val * 0.3048}"`
		echo "$val feet = $inch inch"
		echo "$val feet = $meter meter"
	;;
	"meter")
		mtofeet=`awk "BEGIN {print $val / 0.3048}"`
		echo "$val meter = $mtofeet feet"
	;;
	*)
		echo "invalid unit"
	;;
esac
