#!/usr/bin/env bash
# File: guessinggame.sh

function ask {
	echo "Enter the number of files in the current working directory:"
	read response
   files=$(ls -l | wc -l)
}

ask

while [[ $response -ne $files ]]
do
	if [[ $response -lt $files ]]
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Congratulations! $guess is the number of files in the current working directory!"

