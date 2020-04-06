all: README.md

README.md : guessinggame.sh
	echo "# The Guessing Game!" > README.md

	echo "## Bash, Make, Git, and GitHub" >> README.md

	echo "**Description**: This program continuously asks the user to guess the number of files in the current " >> README.md
	echo "directory, until they guess the correct number. The user will be informed their guess is too high or too " >> README.md
	echo "low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md

	echo "\n**The date and time the make file was generated is**: " >> README.md
	date >> README.md

	echo "\n**The number of lines in the guessinggame.sh**: " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
