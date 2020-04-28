#! /bin/bash -x
#print unit ,ten ,hndread ,thousand of a no using case

read -p "enter a no" no
i=0;
tempno=$no

while [ $tempno -gt 0 ]
do
	rem=$(($tempno%10))
	tempno=$(($tempno/10))
	i=$(($i+1))
done

case $i in
	1)
        unit=$no
        echo "unit=$unit"
	;;
	2)
        unit=$(($no%10))
        ten=$((($no/10)%10))
        echo "unit=$unit"
        echo "ten=$ten"
	;;
	3)
        unit=$(($no%10))
        ten=$((($no/10)%10))
        hundred=$((($no/100)%10))
        echo "unit=$unit"
        echo "ten=$ten"
        echo "hundred=$hundred"
	;;
	4)
        unit=$(($no%10))
        ten=$((($no/10)%10))
        hundred=$((($no/100)%10))
        thous=$(($no/1000))
        echo "unit=$unit"
        echo "ten=$ten"
        echo "hundred=$hundred"
        echo "thousand=$thous"
	;;
	*)
        echo "enter a no less than 5 digit"
	;;
esac

