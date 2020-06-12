#!/bin/bash
echo "Welcome to Simulation"

declare -A coin
noOfFlip=45
coin["heads"]=0
coin["tails"]=0


for ((count=0; noOfFlip>count; count++))
do
	dic=$(( $RANDOM % 2 ))
	if (( $dic > 0 ))
	then
		coin["heads"]=$((${coin[heads]} + 1))

	else
		coin["tails"]=$((${coin[tails]} + 1))

	fi

done
echo "Heads: ${coin[heads]}"
echo "Tails: ${coin[tails]}"

if ((${coin[heads]} >= ${coin[tails]} ))
then
 	echo "Heads win"

elif ((${coin[tails]} >= ${coin[heads]} ))
then
	echo "Tails win"
elif (( ${coin[heads]} == ${coin[tails]}  ))
then
	echo "Its a Tai"

fi

