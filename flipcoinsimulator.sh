#!/bin/bash

H=0
T=0
for (( i=0 ; i<=40; i++ ))
do
	IsChoice=$((RANDOM%2))
	if [ $IsChoice -eq 0 ]
	then
		((H++))
	else
		((T++))
	fi
	if [ $H -eq 21 ]
	then
		echo "H win by $(($H-$T))"
		break
	elif [ $T -eq 21 ]
	then
		echo "T win by $(($T-$H))"
		break
	elif [ $H -eq 20 ] && [ $T -eq 20 ]
	then
		echo "Tie"
		break
	fi
done
