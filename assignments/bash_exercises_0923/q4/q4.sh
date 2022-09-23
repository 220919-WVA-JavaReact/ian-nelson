#!/bin/bash
pwd
whoami #gives current username

dat="$(date +'%m/%d/%Y')"
echo "Today is :" $dat

login="$(users | wc -w)"
#grabs users, checks word count of users, and then prints that word count
echo "Number of users logged in :" $login

#I learned that when making an expression and assigning it to a value
#You have to put them in paranthesis with a $ and quotations around
