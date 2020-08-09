#!/bin/bash

H=0
T=0
function tosses(){
IsChoice=$((RANDOM%2))
if [ $IsChoice -eq 0 ]
then
	((H++))
else
	((T++))
fi
}

for (( i=0 ;i<=40; i++ ))                                     
do
  # function call
      tosses

	if [ $(($H-$T)) -ge 2 ]
	then
		echo "HURRAY H WINNER"
		break
	elif [ $(($T-$H)) -ge 2 ]
	then
		echo "HURRAY T WINNER"
		break
       elif [ $H -eq 20 ] && [ $T -eq 20 ]
	then
		 echo "ITS a TIE"
		break
	fi
done
 
