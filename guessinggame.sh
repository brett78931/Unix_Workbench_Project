#!/usr/bin/env bash
# File: guessinggame.sh

function ask {
	echo "Enter the number of files in the current directory:"
	read guess
   files=$(ls | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]]
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Congratulations! $guess is the number of files in the current working directory!"

