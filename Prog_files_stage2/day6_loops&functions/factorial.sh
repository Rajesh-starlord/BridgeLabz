#! /bin/bash
#factorial of a no

read -p "enter a no--" no
fact=1
for(( i = 1;i<=no;i++ ))
do
	fact=$(($fact*$i))
done
echo "factorial of $no= $fact"
