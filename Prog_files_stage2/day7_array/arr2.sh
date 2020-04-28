#! /bin/bash

for i in `seq 10`
do
        arr[$i]=$((($RANDOM%899)+100))
        echo ${arr[$i]}
done

Sort_arr()
{
for ((i=1;i<=${#arr[@]};i++))
do
    for ((j=i;j<=${#arr[@]};j++))
    do
        if [ ${arr[$i]} -gt ${arr[$j]} ]
        then
            temp=${arr[$i]}
            arr[$i]=${arr[$j]}
            arr[$j]=$temp
        fi
    done
done
}
Sort_arr
echo "${arr[@]}"
if [ ${arr[10]} -ne ${arr[9]} ];
then
	sechst=${arr[9]}
	echo "second height no = ${arr[9]}"
else
	for (( i=1;i>8;i++ ))
	do
		if [ ${arr[$((9-$i))]} < $sechst ]
			sechst=${arr[$((9-$i))]} 
			echo "second height no = $sechst"
			break
		elif [ $((9-$i)) -eq 1 ]
			echo "not found"
			break
		fi

echo "second smallest no = ${arr[2]}"




