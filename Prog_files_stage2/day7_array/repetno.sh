#! /bin/bash

counter=0
for i in `seq 9`
do
	arr[$counter]=$((11*$i))
	counter=$(($counter+1))
done
echo "${arr[@]}"
