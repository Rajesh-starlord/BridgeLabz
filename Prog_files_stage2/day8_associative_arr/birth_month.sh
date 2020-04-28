#! /bin/bash

get_month () {
	mon=( "JAN" "FEB" "MAR" "APR" "MAY" "JUN" "JUL" "AUG" "SEP" "OCT" "NOV" "DEC")
	arg=$1
	echo ${mon[$arg]}
}

for(( i=0;i<50;i++ ))
do
	birth_month=$(($(($RANDOM%11))+1))
	month=$(get_month $birth_month)
	birth_dict[$i]="person$i:$month-92"
done
c=o
for(( j=0;j<12;j++ ))
do
	bmonth=$(get_month $j)
	array[$c]=$(get_month $j)
        c=$(($c+1))
	for(( i=0;i<50;i++ ))
	do
      		birth_month=`echo  ${birth_dict[$i]} | awk -F":" '{print $2}'`
		persons_birth_month=`echo  $birth_month | awk -F"-" '{print $1}'`
		if [ $persons_birth_month == $bmonth ];
		then
				array[$c]=${birth_dict[$i]}
				c=$(($c+1))
            	fi
	done
 	array[$c]="end"
        c=$(($c+1))
done

print () {
for val in $@
do
	if [ $val == "end" ];
	then
		printf "=====================\n"
	else
		echo $val
	fi

done
}
print ${array[@]}

