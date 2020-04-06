all: README.md

README.md : guessinggame.sh
	echo "# The Guessing Game!" > README.md

	echo "## Bash, Make, Git, and GitHub" >> README.md

	echo "\n**The date and time the make file was executed is**: " >> README.md
	date >> README.md

	echo "\n**The number of lines in the guessing game script**: " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
