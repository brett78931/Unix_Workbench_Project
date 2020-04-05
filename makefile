all: README.md

README.md : guessinggame.sh
	echo "# The title of the project is: Bash, Make, Git, and GitHub." > README.md

	echo "The date and time the make file was generated is:" date >> README.md

	echo "The number of lines in the guessinggame.sh:" grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
