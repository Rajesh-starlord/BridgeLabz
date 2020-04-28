#! /bin/bash
#print the power-2 table of a no

read -p "enter your range--" range

if [ $range -gt 8 ];then
	echo "power is restricted to 2^8:"
else

	result=1;
	echo "2^0=1"
	count=1
	i=1

	while [ $count -le $range ]
	do
        	while [ $i -le $count ]
        	do
                	result=$(($result*2))
			i=$(($i+1))
        	done
        	echo "2^$count=$result"
		count=$(($count+1))
	done
fi
