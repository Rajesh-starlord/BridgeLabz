#! /bin/bash 

read -p "enter a no--" number
tempno=$number
rem=0
reverse=""
check_Palindrome () {

	while [ $number -gt 0 ]
	do
		rem=$(($number%10))
		number=$(($number/10))
		reverse=`echo ${reverse}${rem}`
	done
	echo "reverse=$reverse"
	if [ $reverse -eq $tempno ]; then
		echo "$tempno is palindrome"
	else
		echo "$tempno is not palindrome"
	fi
}

check_Palindrome
