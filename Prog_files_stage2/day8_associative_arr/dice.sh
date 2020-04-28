#! /bin/bash

get_key () {

	key=("one" "two" "three" "four" "five" "six")
	arg=$(($@-1))
	echo ${key[$arg]}
}

extract_val () {
        value=`echo $@|awk -F":" '{print $2}'`
	echo $value
}
roll_dice () {

	rno=$(($(($RANDOM%6))+1))
        key=$(get_key $rno)
	echo $key
        val=$(extract_val ${dice[$(($rno-1))]})
       	dice[$rno-1]="$key:$(($val+1))"
        echo ${dice[@]}

}

smallest () {

	small=$(extract_val ${dice[0]})
 	for(( i=1;i<6;i++ ))
        do
                val1=$(extract_val ${dice[$i]})
                if [ $val1 -le $small ];
                then
			small=$val1
                        smallest_diceno=${dice[$i]}
                fi
	done
	echo "smallest=$smallest_diceno"

}

status="undone"
roll="yes"
dice=(one:0 two:0 three:0 four:0 five:0 six:0)

while [ $status == "undone" ]
do
	roll_dice $roll
	for(( i=0;i<6;i++ ))
	do
		val=$(extract_val ${dice[$i]})
		if [ $val -eq 10 ];
		then
			status="done"
			roll="no"
			greatest=${dice[$i]}
			echo "greatest="$greatest
			break
		fi
	done
done
smallest
echo "${dice[@]}"
