#! /bin/bash 
#to check a no is prime or not

read -p "enter your number--" no

for(( count = 1; count<=no; count++ ))
do
	rem=`awk "BEGIN {print $no % $count}"`
        if [ $rem -eq 0 ]; then
                noOFdivisers=$(($noOFdivisers+1))
        fi
done

if [ $noOFdivisers -le 2 ] && [ $no -ne 1 ]; then
 	echo "$no is a prime no"
else
	echo "$no is not-prime"
fi

