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
		return 1
        else
                echo "$tempno is not palindrome"
		return 0
        fi
}

is_prime () {
	for(( i = 1; i<=tempno; i++ ))
	do
        	reminder=`awk "BEGIN {print $reverse % $i }"`
        	if [ $reminder -eq 0 ]; then
                	noOFdivisers=$(($noOFdivisers+1))
        	fi
	done

	if [ $noOFdivisers -le 2 ] && [ $tempno -ne 1 ]; then
        	echo "$reverse is a prime no"
	else
        	echo "$reverse is not-prime"
	fi
}

check_Palindrome
ret=$?
if [ $ret -eq 1 ]; then
	is_prime
fi
