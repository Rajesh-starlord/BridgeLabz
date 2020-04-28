#! /bin/bash
#find the three pair no whose sum=0

read -p "enter array length-" length
for (( i = 0 ;i<length; i++ ))
do
	read -p "enter index val$i-" arr[$i]
done
#echo ${arr[@]}
found=0
for (( j = 0; j < length; j++ ))
do
	for (( k = j+1; k < length; k++ ))
	do
		sum=$((${arr[$j]}+${arr[$k]}))
		for (( c = 0; c < length ;c++ ))
		do
			result=$(($sum+${arr[$c]}))
                	if [ $result -eq 0 ]; then
                    		echo "${arr[$j]} + ${arr[$k]} + ${arr[$c]} = 0"
              			found=1
			fi
		done
        done
done

if [ $found -ne 1 ];
then
	echo "not found"
fi

