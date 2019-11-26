guessinggame : 
	touch README.md
	echo "Title of this project is : Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "Date make was run at : " >> README.md
	date >> README.md
	echo "guessinggame.sh contains following number of lines : " >> README.md
	cat guessinggame.sh | wc -l >> README.md
