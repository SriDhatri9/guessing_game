#!/usr/bin/env bash

# Bash Guessing Game Project

# Function to get the number of files in the current directory
get_file_count() {
  echo $(ls -1 | wc -l)
}

# Ask the user to guess until correct
guess_files() {
  local correct_count
  correct_count=$(get_file_count)

  echo "How many files are in the current directory?"
  read user_guess

  while [[ $user_guess -ne $correct_count ]]
  do
    if [[ $user_guess -lt $correct_count ]]; then
      echo "Too low. Try again:"
    else
      echo "Too high. Try again:"
    fi
    read user_guess
  done

  echo "Congratulations! You guessed correctly."
}

# Run the guessing function
guess_files
