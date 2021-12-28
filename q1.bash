#!/bin/bash
#First part of the quiz
#Read the value
read -p 'Star Value: ' StarValue
#Even or odd control
if [ $((StarValue%2)) -ne 0 ]
then
value=${StarValue}                 
line() { printf "%$(($1+value))s\n" "$(yes "* " | sed ${1}q | tr -d \\n)"; }
for i in $(seq $value) $(seq $((value-1)) -1 1); do line $i; done


#Second Part of quiz
else
echo "Value is not perfect"
fi