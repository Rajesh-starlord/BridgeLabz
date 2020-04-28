#! /bin/bash -x
#to check weather the date lies b/w march 20 and june 20 or not

read -p "enter the day (dd)" dd
read -p "enter the month(mm)" mm


if [ $mm -eq 03 ] && [ $dd -gt 20 ];then

	echo "true"

elif [ $mm -eq 06 ] && [ $dd -lt 20 ]; then

	echo "true"

elif [ $mm -ge 04 ] && [ $mm -le 05 ]; then

	echo "true"
else
	echo "false"
fi
