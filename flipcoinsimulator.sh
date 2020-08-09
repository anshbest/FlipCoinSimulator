#!/bin/bash

IsChoice=$((RANDOM%2))
if [ $IsChoice -eq 0 ]
then
	echo "Heads is winner"
else
	echo "Tails is winner"
fi

