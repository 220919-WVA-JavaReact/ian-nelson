#!/bin/bash
#gather values for csv file
echo List your first name
read fname
echo List your last name
read lname
echo List your email
read email1
echo List your preferred password
read passw
echo List your preferred username
read usern

#Make sure username  is original
if grep $usern "user_data.csv"
then echo Username already taken, please enter an original username
sh parser_new.sh
##if username is original, pass into csv file
else
echo "$fname,$lname,$email1,$passw,$usern" >> user_data.csv
fi


#Pass information to csv file, used this before checking username, no longer needed
##echo "$fname,$lname,$email1,$passw,$usern" >> user_data.csv

