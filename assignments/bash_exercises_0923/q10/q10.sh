#!/bin/bash
#Find the max number out of 3 number input by the user
echo "List 3 numbers and we'll find the max."
read -p "First number:" num1
read -p "Second number:" num2
read -p "Third number:" num3
echo $num1 $num2 $num3

#compare numbers, try to see if num1 largest first
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
echo $num1 "is the max!"
elif [ $num2 -gt $num3 ] &&  [ $num2 -gt $num3 ]
then
echo $num2 "is the max!"
##elif [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ]
else
echo $num3 "is the max!"
fi

