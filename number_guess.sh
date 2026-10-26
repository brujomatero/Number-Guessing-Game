#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME
user_id=$($PSQL "select user_id from users where username='$USERNAME'")

if [ -z "$user_id" ]

then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  $PSQL "insert into users(username) values('$USERNAME')"  > /dev/null

else
  games_played=$($PSQL "select count(*) from games where user_id=$user_id")
  best_game=$($PSQL "select attempts from games where user_id=$user_id order by attempts limit 1;")
  echo -e "\nWelcome back, $USERNAME! You have played $games_played games, and your best game took $best_game guesses.\n"

fi

attempt=0
min=1
max=1000
random2=$(( min + RANDOM % (max - min + 1) ))


GUESS() {
  read guess
  
  if [[ $guess =~ ^[0-9]+$ ]]
  then

    if [[ $guess -gt $random2 ]]
    then
      echo -e "\nIt's lower than that, guess again:"
      ((++attempt))
      GUESS

    elif [[ $guess -lt $random2 ]]
    then
      echo -e "\nIt's higher than that, guess again:"
      ((++attempt))
      GUESS

    else
      ((++attempt))
      user_id=$($PSQL "select user_id from users where username='$USERNAME'")
      $PSQL "insert into games(user_id,attempts) values($user_id,$attempt)" > /dev/null
      echo "You guessed it in $attempt tries. The secret number was $random2. Nice job!"
    fi

  else
    ((++attempt))
    echo -e "\nThat is not an integer, guess again:"
    GUESS
  fi
}

echo -e "\nGuess the secret number between 1 and 1000:"
GUESS