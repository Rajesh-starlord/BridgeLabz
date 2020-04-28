#! /bin/bash
#prime factors of a no

read -p "enter a no--" no
c=0

for(( i = 1;i<=no;i++ ))
do
        for(( j = 1;j<=no;j++ ))
	do
		res=$(($i*$j))
		if [ $res -eq $no ]; then
			factors+="$i "
			for(( count = 1; count<=i; count++ ))
			do
        			rem=`awk "BEGIN {print $i % $count}"`
        			if [ $rem -eq 0 ]; then
                			noOFdivisers=$(($noOFdivisers+1))
        			fi
			done

			if [ $noOFdivisers -le 2 ] && [ $i -ne 1 ]; then
        			primeFactors[$c]=$i
				c=$(($c+1))
			fi
			noOFdivisers=0
		fi
	done
done
echo "factors of $no= $factors"
echo "prime factors of $no= ${primeFactors[@]}"
