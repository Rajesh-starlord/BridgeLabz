#! /bin/bash
#simulate coin flip

HEAD=0
TAIL=0

while [ $HEAD -lt 11 ] && [ $TAIL -lt 11 ]
do
        rno=$(($RANDOM%3))

        if [ $rno -eq 1 ]; then
                echo "heads"
                HEAD=$(($HEAD+1))
        else
                echo "tails"
                TAIL=$(($TAIL+1))
        fi
done

echo "you got $HEAD heads and $TAIL tails in flip"
