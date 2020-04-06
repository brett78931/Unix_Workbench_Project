#!/usr/bin/env bash
# File: guessinggame.sh

#set $answer to correct number
answer=$(ls | wc -l)

#write function to ask the player to guess how many files
function ask {
	echo "Enter the number of files in the current directory:"
	read response
}

#initiate function to receive response

ask

#construct while loop to determine if $response is NOT equal to $answer
	#if statement within should echo out high/low and ask for another response.
	#replace old response with new

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

#congratulate player

echo "Correct, congrats!"
