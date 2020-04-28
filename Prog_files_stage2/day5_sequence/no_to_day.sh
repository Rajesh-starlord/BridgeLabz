#! /bin/bash -x
#take a no and print the day using case

read -p "Enter a mo btw 1 - 7 : " day

case $day in
        1)
                echo "SUNDAY" ;;
        2)
                echo "MONDAY" ;;
        3)
                echo "TUESDAY" ;;
        4)
                echo "WEDNESSDAY" ;;
        5)
                echo "THURSEDAY" ;;
        6)
                echo "FRIDAY" ;;
	7)
		echo "SATURDAY" ;;
	*)
		echo "invalid input" ;;
esac
