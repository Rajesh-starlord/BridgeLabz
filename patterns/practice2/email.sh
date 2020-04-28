#! /bin/bash -x
#pattern matching

#read -p "enter your email--" email
pat="^([a-zA-Z])+[_\+\.\-]*[0-9a-zA-Z]+[@][0-9a-zA-Z]+[_\+\.]+[co|in|com|au]$"
check_mails () {
declare -a emails
for((i=0;i<9;i++))
do
	emails[i]=`cat email.csv| awk '{if(NR==$i+1) print $0}'`
done
length=${#emails[@]}
echo $length
echo ${emails[@]}
for((j=0;j<$length;j++))
do
	if [[ ${emails[$j]} =~ $pat ]];
	then
        	echo "valid"
	else
        	echo "invalid"
			return 2
	fi
done
}
check_mails
res=$?
if [[ $res -eq 2 ]];
then
        echo "All emails are not valid:"
else
        echo "All mails are successfull validated:"
fi

