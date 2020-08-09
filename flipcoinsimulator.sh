#!/bin/bash

Heads=0
Tails=0
Head=0
Tail=0

function tietosses () {
IsChoice=$((RANDOM%2))
if [ $IsChoice -eq 0 ]
then
        ((Heads++))
else
        ((Tails++))
  fi
  }


function freshgame () {
IsChoice=$((RANDOM%2))
if [ $IsChoice -eq 0 ]
then
        ((Head++))
else
        ((Tail++))
  fi


  }

for (( i=0 ;i<=40; i++ ))
  do
          tietosses
 while [[ $Heads -eq 20  &&  $Tails -eq 20 ]]
                do
                 echo "ITS a TIE GAME RESUMES AGAIN"
                     break
                     done

                     freshgame
        while [ $Head  -ge 21 ]
        do

        if [ $(($Head-$Tail)) -ge 2 ]
        then
                echo "HURRAY HEADS WINNER"
                break
            fi
           done
         while [ $Tail  -ge 21 ]
               do

             if [ $(($Tail-$Head)) -ge 2 ]
               then
                echo "HURRAY TAILS WINNER"
                break
                fi
              done
    done
