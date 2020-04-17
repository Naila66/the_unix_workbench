readme : guessinggame.sh
	touch README.md
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "Date and Time at which make was ran at:"  >> README.md
	date >> README.md
	echo "The number of lines of code contained in guessinggame.sh are:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
