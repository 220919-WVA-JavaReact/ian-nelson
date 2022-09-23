#!/bin/bash
## take 10 numbers and tell how many are positive and negative

##pos and negative variables
Pos=0
Neg=0
##function for checking if positive or negative and counting
check_posneg () {
if  [ $1 -gt 0 ]
then
(( Pos++ ))
elif [ $1 -lt 0 ]
then
(( Neg++ ))
else
echo Zeros are neither positive nor negative.
fi
}
##ask for the numbers i guess...

echo List 10 numbers and we will tell you how many are positive and negative
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3
read -p "Enter fourth number: " num4
read -p "Enter fifth number: " num5
read -p "Enter sixth number: " num6
read -p "Enter seventh number: " num7
read -p "Enter eighth number: " num8
read -p "Enter ninth number: " num9
read -p "Enter tenth number: " num10

check_posneg $num1
check_posneg $num2
check_posneg $num3
check_posneg $num4
check_posneg $num5
check_posneg $num6
check_posneg $num7
check_posneg $num8
check_posneg $num9
check_posneg $num10

echo "Positive numbers: "$Pos
echo "Negative numbers: "$Neg
