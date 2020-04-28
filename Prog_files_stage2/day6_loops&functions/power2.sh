#! /bin/bash 
#print the power-2 table of a no

read -p "enter your range--" range
result=1;
echo "2^0=1"
for((count = 1; count<=range; count++ ))
do
	for((i = 1; i<=count; i++ ))
	do
        	result=$(($result*2))
	done

	echo "2^$count=$result"
	result=1
done
