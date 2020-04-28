#! /bin/bash -x


#to find out sum and avg of five given random no

i=1;

while [ $i -le 5 ]
do
	no=$(($RANDOM%100))
  	sum=$((sum + no)) 
  	i=$((i + 1))

done

avg=$(($sum/5))
echo "sum="$sum
echo "avg="$avg
