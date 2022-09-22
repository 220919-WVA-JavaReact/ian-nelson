#!/bin/bash

#  Ask for 2 values and make sure they are numbers
echo "List the 2 values in order of their intended operation"
read num1
if [[ $num1 =~ '^[0-9]+$' ]]
then echo "error: Not a number, please use a number." >&2; exit 1
fi
read num2
if [[ $num2 =~ '^[0-9]+$' ]]
then echo "error: Not a number, please use a number" >&2; exit 1
fi
echo $num1 and $num2 saved.

# Gather the operation
echo What operation would you like to perform?
echo Addition, Subtraction, Multiplication, or Division?
read Oper

#Perform maths
if [[ $Oper = Addition ]]
then
expr $num1 + $num2
elif [[ $Oper = Subtraction ]]
then
expr $num1 - $num2
elif [[ $Oper = Multiplication ]]
then
expr $num1 \* $num2
elif [[ $Oper = Division ]]
then
expr $num1 / $num2
else
echo Not a correct input
echo "Next time answer with Addition, Subtraction, Multiplication, or Division."
fi
