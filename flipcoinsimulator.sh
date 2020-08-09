#!/bin/bash

H=0
T=0
for (( i=0 ; i<20 ; i++ ))
do
	IsChoice=$((RANDOM%2))
	if [ $IsChoice -eq 0 ]
	then
		((H++))
	else
		((T++))
	fi
done
echo "H occured $H times and T occured $T times"
