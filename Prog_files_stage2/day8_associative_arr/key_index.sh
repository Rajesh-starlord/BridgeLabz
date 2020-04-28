#! /bin/bash

dict=( "name:rajesh "place:bbsr" "liketo:drive")
c=0
extract_key () {
	for i in $@
	do
		key[$c]=${i%%:*}
		c=$(($c+1))
	done
}
c1=0
extract_val () {
        for value in $@
        do
                val[$c1]=${value##*:}
                c1=$(($c1+1))
        done
}

extract_key ${dict[@]}
extract_val ${dict[@]}

echo ${key[@]}
echo ${val[@]}

