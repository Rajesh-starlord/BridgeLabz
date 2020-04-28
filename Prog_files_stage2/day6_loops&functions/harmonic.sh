#! /bin/bash 

read -p "enter your range--" range
sum=0

for((count = 1; count<=range; count++ ))
do
        hno=`awk "BEGIN {print 1 / $count}"`
	if [ $count -eq $range ]; then
		series+="1/$count"
	else
		series+="1/$count + "
	fi
	sum=`awk "BEGIN {print $sum + $hno}"`
done
echo "garmonic series="$series
echo "sum of harmonic no=$sum"

