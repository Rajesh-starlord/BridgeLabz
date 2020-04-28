#! /bin/bash

for i in `seq 10`
do
        arr[$i]=$((($RANDOM%899)+100))
        echo ${arr[$i]}
done

arr_size=`echo ${#arr[@]}`
echo "array size=$arr_size"

first=${arr[1]}
second=${arr[1]}

find_second_largest () {

first=${arr[1]}
second=${arr[1]}

for (( i = 1; i <= 10; ++i ))
do
        if [ $first -lt ${arr[$i]} ]; then
            second=$first
            first=${arr[$i]}
        else
        	if [ ${arr[$i]} -gt $second ] && [ ${arr[$i]} -ne $first ]; then
            		second=${arr[$i]}
		fi
        fi
done
echo "second largest=$second"
}

find_second_smallest () {

first=${arr[1]}
second=${arr[1]}

for (( i = 1; i <= 10; ++i ))
do
        if [ $first -gt ${arr[$i]} ]; then
            second=$first
            first=${arr[$i]}
        else
                if [ ${arr[$i]} -lt $second ] && [ ${arr[$i]} -ne $first ]; then
                        second=${arr[$i]}
             	fi
        fi
done
echo "second smallest=$second"
}

find_second_largest
find_second_smallest
