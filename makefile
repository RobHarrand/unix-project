#makefile for Unix course project

README.md:
	echo '**Guessing Game Program**  ' > README.md
	date >> README.md
	echo '  ' >> README.md
	wc -l guessinggame.sh >> README.md
