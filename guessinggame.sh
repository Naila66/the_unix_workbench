#!/usr/bin/env bash
totalfiles=$(ls | wc -l)

function guess_name
{
read input
if [[ $input -eq $totalfiles ]]
then
    echo "Congrats,Your Guess is correct"
    echo "We have below files in the directory"
    for f in $(ls)
    do 
       echo "     - $f "
    done
else 
     if [[ $input -gt $totalfiles ]]
     then
         echo "Your guess is high, try to guess again with a lower value"
         guess_name
     else
         echo "Your guess is low, try to guess again with a higher value"
         guess_name
     fi
fi
}
echo "Welcome to guessing game"
echo "Guess how many files are in the current directory:"
guess_name 
