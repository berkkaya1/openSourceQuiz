#!/bin/bash     
#First Part of Quiz       
read -p 'Star Value: ' StarValue

if [ $((StarValue%2)) -ne 0 ]
then
w=${StarValue}                       
line() { printf "%$(($1+w))s\n" "$(yes "* " | sed ${1}q | tr -d \\n)"; }
for i in $(seq $w) $(seq $((w-1)) -1 1); do line $i; done

#Second part of Quiz
else
rows=StarValue
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "*"
  done
  echo
done
fi