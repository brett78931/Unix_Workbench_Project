all: README.md

README.md : guessinggame.sh
	echo "# The title of the project is: Bash, Make, Git, and GitHub." > README.md

	echo -n "\n**The date and time the make file was generated is**:" >> README.md
	date >> README.md

	echo -n  "\n**The number of lines in the guessinggame.sh**:" >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
