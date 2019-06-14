#!/bin/bash

MOVIE=$1

if [[ -z ${API_KEY} ]] || [[ -z ${MOVIE} ]]; then
  echo "Missing arguments!"
  exit 1
fi

# NOTE(mheler): replace all spaces in the title with a +
MOVIE_TITLE=${MOVIE// /+}

API_QUERY=$(curl -s "http://www.omdbapi.com/?apikey=${API_KEY}&t=${MOVIE_TITLE}&y=&plot=short&tomatoes=true&r=json")

# NOTE(mheler): check to see if the results came back OK
if echo ${API_QUERY} | jq .Response | grep -q "False"; then
  echo ${API_QUERY} | jq .Error
  exit 1
fi

API_RESULTS=$(echo ${API_QUERY} | jq -r '.Ratings[] | select(.Source=="Rotten Tomatoes") | .Value')
echo "Rotten Tomato review of ${MOVIE}:"

# NOTE(mheler): some movies may not have a Rotten Tomato review
if [ ! -z ${API_RESULTS} ]; then
  echo $API_RESULTS
else
  echo "No recorded results!"
fi

exit 0
