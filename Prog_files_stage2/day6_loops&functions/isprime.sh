#! /bin/bash 
#to check the prime nos within a range

read -p "enter your starting_range--" start
read -p "enter the ending range--" end

for(( i = start; i<=end; i++ ))
do
	for(( count = 1; count<=i; count++ ))
	do
        	rem=`awk "BEGIN {print $i % $count}"`
        	if [ $rem -eq 0 ]; then
                	noOFdivisers=$(($noOFdivisers+1))
        	fi
	done

	if [ $noOFdivisers -le 2 ] && [ $i -ne 1 ]; then
        	primenos+="$i "
	fi
	noOFdivisers=0
done
echo "prime numbers between $start and $end = $primenos"
