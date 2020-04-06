#!/usr/bin/env bash
# File: guessinggame.sh

answer=$(ls | wc -l)

function ask {
	echo "Enter the number of files in the current directory:"
	read response
}

ask

while [[ $response -ne $answer ]]
do
	if [[ $response -lt $answer ]]
	then
		echo "Your guess was too low. Please try again."
		read response
	else
		echo "Your guess was too high. Please try again."
		read response
	fi
done

echo "Correct!"

