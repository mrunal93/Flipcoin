#!/bin/bash
echo "Welcome to Simulation"

declare -A coin
noOfFlip=50
coin["heads"]=0
coin["tails"]=0

for (( count=0; count<=$noOfFlip; count++ ))
do
	dic=$(( $RANDOM % 2 ))
	if (( $dic -eq 0 ))
	then
		echo "Head"
		coin["heads"]=$((${coin[$1]} + 1))
	else
		echo "Tail"
		coin["tails"]=$((${coin[$2]} + 1))
	fi
done
echo "Heads: ${coin[$1]}"
echo "Tails: ${coin[$2]}"

