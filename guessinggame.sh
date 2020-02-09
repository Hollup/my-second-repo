#!/usr/bin/env bash
# File: guessinggame.sh
function get_number {
	num=$(ls -1 | wc -l)
}
get_number
echo "Guess the number of files in this directory"
read guess
while [[ guess -ne num ]]
do
	if [[ guess -gt num ]]
	then
		echo "Your guess is too high"
	else
		echo "Your guess is too low"
	fi
	echo "Try again"
	read guess
done
echo "Congratulations, you did it, the actual nubmer of files stored in this directory is $guess"

