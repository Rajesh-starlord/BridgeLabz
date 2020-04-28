#! /bin/bash
#find magic no

echo "think a no between 1-100:---"
step=1
low=1
heigh=100
found=0

while [ $low -le $heigh ] && [ $found -ne 1 ]
do
     	mid=$(((($low+$heigh)/2)));
	read -p "is your no is $mid--y/n--" ans
        if [ $ans == "y" ]; then
		magic=$mid
                echo "magic no $magic found in $step steps"
		found=1
	else

		read -p "is your no lies between 1 to $mid--y/n--" ans
     		if [ $ans == "n" ]; then
        		low=$(($mid+1))
			step=$(($step+1))
     		elif [ $ans == "y" ]; then
        		heigh=$(($mid-1))
			step=$(($step+1))
     		fi
   	fi
done

