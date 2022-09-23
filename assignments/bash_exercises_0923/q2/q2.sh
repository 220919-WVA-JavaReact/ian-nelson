#!/bin/bash
#assign initial value
a=0
b=1
c=1
echo $a
echo $b
while [ $c -le 88 ]
do
c=$(( $a + $b ))
a=$b
b=$c
echo $c
done
