#! /bin/bash -x

#simulate coin flip

i=1
HEAD=0
TAIL=0

while [ $i -le 10 ]
do
	rno=`seq 2 | sort -R |awk '{print}' | head -n 1`

	if [ $rno -eq 1 ]; then
		echo "heads"
		HEAD=$(($HEAD+1))
	else
		echo "tails"
		TAIL=$(($TAIL+1))
	fi
	i=$(($i+1))
done

echo "you got $HEAD heads and $TAIL tails in flip"
