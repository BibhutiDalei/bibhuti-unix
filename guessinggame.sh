#!/bin/bash

#reads the current directory from user
usr_wc_out=($(ls -p | grep -v / | wc))
usr_answer=${usr_wc_out[0]}

guess_number_of_files () {
read -p "Guess how many number of files in this curent directory ? : " fileCount
if [ $fileCount -eq $fileCount 2>/dev/null ]
    then
        if [[ $fileCount -lt $usr_answer ]]
            then
                echo "Guess is Too low"
                guess_number_of_files
        elif [[ $fileCount -gt $usr_answer ]]
            then
                echo "Guess is Too high"
                guess_number_of_files
        elif [[ $fileCount -eq $usr_answer ]]
            then
                echo "Congratulations!!! Your Guess is correct. There are "$usr_answer" number of files in this current directory."
        fi
    else
        echo "Input is not valid, try again with an integer value"
        guess_number_of_files
fi
}

guess_number_of_files
