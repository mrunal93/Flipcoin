#!/bin/bash
echo "Welcome to Simulation"

declare -A coin
noOfFlip=100
coin["heads"]=0
coin["tails"]=0

check_coin () {
if ((${coin[heads]} == 21 ))
        then
                echo "Heads win"
                
        elif ((${coin[tails]} == 21 ))
        then
                echo "Tails win"
                
        elif (( ${coin[heads]} == ${coin[tails]} == 21 ))
        then
                echo "Its a Tai"
                
        fi
}
for ((count=0; noOfFlip>count; count++))
do
	dic=$(( $RANDOM % 2 ))
	if (( $dic > 0 ))
	then
		coin["heads"]=$((${coin[heads]} + 1))
		check_coin
		break
	else
		coin["tails"]=$((${coin[tails]} + 1))
		check_coin
		break
	fi

done
echo "Heads: ${coin[heads]}"
echo "Tails: ${coin[tails]}"

