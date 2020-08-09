#!/bin/bash -x

numberOfH=0
numberOfT=0
function isChoice(){
isChoice=$((RANDOM%2))
if [ $isChoice -eq 0 ]
then
	((numberOfH++))
else
	((numberOfT++))
fi
}
function freshgame(){
for (( i=0 ;i<=40 ; i++ ))
do
	isChoice
	if [ $(($numberOfH-$numberOfT)) -ge 2 ]
	then
		echo "H win"
		break
	elif [ $(($numberOfT-$numberOfH)) -ge 2 ]
	then
		echo "T win"
		break
	fi
done
}
for (( j=0 ;j<=40 ; j++ ))
do
	isChoice
	if [ $numberOfH -eq 21 ]
	then
		flag=0
		break
	elif [ $numberOfT -eq 21 ]
	then
		flag=1
		break
	elif [ $numberOfH -eq 20 ] && [ $numberOfT -eq 20 ]
	then
		flag=2
		break
	fi
done
if [ $flag -eq 2 ]
then
	functionreturn="$(freshgame)"
	echo $functionreturn
elif [ $flag -eq 1 ]
then
	echo "T win by $(($numberOfT-$numberOfH))"
elif [ $flag -eq 0 ]
then
	echo "H win by $(($numberOfH-$numberOfT))"
fi
