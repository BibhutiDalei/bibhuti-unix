#!/bin/bash

#Get the number of files available in current directory
numberOfFilesCount=$(ls | wc -l)

#Validate the user input with the actual file count
function validate_user_input() {

  read user_input

  if [[ $user_input -eq $numberOfFilesCount ]]
   then
     echo "Congratulations!!! Your guess is correct."
   elif [[ $user_input -gt $numberOfFilesCount ]]
    then
      echo "Your guess is Too high. Please try gaian."
      validate_user_input
   elif [[ $user_input -lt $numberOfFilesCount ]]
    then
      echo "Your guess is Too low. Please try gaian."
      validate_user_input
  fi

}

echo "How many files are available in the current directory? Please guess :"

#Called the method on script running
validate_user_input
