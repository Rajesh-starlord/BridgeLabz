#! /bin/bash
#prime factorialization of a no

read -p "enter a no" no

p=2;
res=$(($p*$p))
while [ $no -ge $res ]
do
	mod=$(($no%$p))
	if [ $mod -eq 0 ]; then
		printf "$p *"
		no=$(($no/$p))
	else
		p=$(($p+1))
	fi
done
printf $no
