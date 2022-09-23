#!/bash/bin

#check ifinput from user is a prime number ornot

read -p "Check if your number is prime or not: " num1

##start from 2 until the number is half itself (only divisble ranges)
i=2

##double parenthesis for arithemetic and evaluation, used more for commands
##	apparently it is also a synonymfor let
## $(( if you want the value of the artihmetic from the regex only 

for ((i=2; i<=$num1/2; i++))
do
	if [ $(($num1 % i)) -eq 0 ]
	then
		echo "Not a prime"
		exit
	fi
done
echo "Prime"

##not going to clean up this code, i learned from it and it works but im over it
