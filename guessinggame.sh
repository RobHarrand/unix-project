#!/usr/bin/env bash 
#Simple guessing game program

num_files=($(ls | wc -l))
success=0

guess () {
  
  if [[ $1 -lt num_files ]]
  then
	echo "Too low! Try a larger number"
  elif [[ $1 -gt num_files ]]
  then
	echo "Too high! Try a smaller number"
  else
	echo "Perfect! Well done!"
	success=1
  fi
 
}

while [[ success -ne 1 ]]
do
	echo "Enter a guess for the number of files in this directory, and then press Enter:"
	read response
	echo "You entered: $response"
	guess $response
done
