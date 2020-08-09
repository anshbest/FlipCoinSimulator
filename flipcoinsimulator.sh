#!/bin/bash

Heads=0
Tails=0
function tosses(){
IsChoice=$((RANDOM%2))
if [ $IsChoice -eq 0 ]
then
        ((Heads++))
else
        ((Tails++))
fi
}

for (( i=0 ;i<=40; i++ ))
   do
      tosses
           while [ $Heads  -lt 21 ]
            do

        if [ $(($Heads-$Tails)) -ge 2 ]
        then
                echo "HURRAY HEADS WINNER"
                break
            fi
          done
           while [ $Tails  -lt 21 ]
               do

             if [ $(($Tails-$Heads)) -ge 2 ]
               then
                echo "HURRAY TAILS WINNER"
                break
                fi
              done

 if [ $Heads -eq 20 ] && [ $Tails -eq 20 ]
                then
                 echo "ITS a TIE"
                break
               fi

done 
