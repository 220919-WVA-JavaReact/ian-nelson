#!/bin/bash
#Find if a string is a palindrome or not
read -p "give me a string: " Str

#single quotes hold onto the literal value of each char within the quotes
#the shell will interpret enclosed text literally 
#no characters have special meanings (except $ when used as a variable)
#also theres how you get the length of a string

size=${#Str}
echo "$size"

#declare a variable for reversed string
reverseStr=""


#backwards forloop?
##use this to reverse the array
##while reverse the array, compare each reversed character to
##to a character at the same point in the regular string
##so you can just use the i value from the for lop to complete this
for (( i=$Str-1; i>=0; i--));
##come back another day
