#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

get_or_create_team () { 
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$1'")
  # if not found
  if [[ -z $TEAM_ID ]]
  then
    # insert team
    local INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) values ('$1')")
    if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
    then
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$1'")
      # echo "Inserted into team, $1"
    fi
  fi
  echo $TEAM_ID
  return $TEAM_ID
}

create_game () {
  local GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year = $1 AND round = '$2' AND winner_id = $3 AND opponent_id = $4")
  if [[ -z $GAME_ID ]]
  then
    local INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values ($1, '$2', $3, $4, $5, $6)")
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$1'")
      echo "Inserted into game, $1, $2, $3, $4, $5, $6"
    fi
  fi
}

echo $($PSQL "TRUNCATE teams, games")

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNERGOALS OPPONENTGOALS
do
  if [[ $YEAR != "year" ]]
  then
    TEAM_WINNER_ID=$(get_or_create_team "$WINNER")
    TEAM_OPPONENT_ID=$(get_or_create_team "$OPPONENT")
    create_game $YEAR "$ROUND" $TEAM_WINNER_ID $TEAM_OPPONENT_ID $WINNERGOALS $OPPONENTGOALS
    # NUMBER_OF_GAMES_RECORD=$($PSQL "SELECT COUNT(*) FROM games")
    # if [[ $NUMBER_OF_GAMES_RECORD == 32 ]]
    # then
    #   echo $NUMBER_OF_GAMES_RECORD 
    # fi
  fi
done
