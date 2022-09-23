#!/bin/bash
#Find the factorial of a number from stdin

read -p "Enter a number to find the factorial " fact
echo $fact

#Perform the factorial equation
# would be number minus 1 then multiply 
b=1

while [ $fact -gt 1 ]
do
b=$(( b * fact ))
((fact--))
done

echo $b

##I am so thankful for these activities, I never though I would be able to make these so fast
