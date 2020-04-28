#! /bin/bash -x
#print unit ,ten ,hndread ,thousand of a no

read -p "enter a no" no
if [ $no -lt 10 ]; then
	unit=$no
	echo "unit=$unit"
elif [ $no -lt 99 ]; then
        unit=$(($no%10))
	ten=$((($no/10)%10))
        echo "unit=$unit"
	echo "ten=$ten"
elif [ $no -lt 999 ]; then
	unit=$(($no%10))
        ten=$((($no/10)%10))
	hundred=$((($no/100)%10))
        echo "unit=$unit"
        echo "ten=$ten"
        echo "hundred=$hundred"
elif [ $no -lt 9999 ]; then
        unit=$(($no%10))
        ten=$((($no/10)%10))
        hundred=$((($no/100)%10))
	thous=$(($no/1000))
        echo "unit=$unit"
        echo "ten=$ten"
        echo "hundred=$hundred"
	echo "thousand=$thous"
else
	echo "enter a no less than 5 digit"
fi

