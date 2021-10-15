#!/bin/zsh
#shellcheck shell=bash

# $1: start / end commands
# $2: path of document receiver
# $3: document receiver name

# ./snipfor.sh start $(pwd) notes.md

SNIPFOR_ENV=/Users/"$USER"/snipfor-environment

if [[ "$1" == "start" ]]; then  
  # Create images folder if it is not there:
  mkdir -p "$2/images"
  cd "$2"
  touch "$3"

  # Create Snipfor environment
  mkdir -p "$SNIPFOR_ENV"
  cd "$SNIPFOR_ENV"
  touch path-of-document-receiver 
  touch path-of-document-receiver-images 
  touch current-page-number # Used for registering page number in documents from snippets 

  echo "$2/$3" >> path-of-document-receiver
  echo "$2/images" >> path-of-document-receiver-images

  echo "Sending snippets to: "
  echo "$2/$3"
  echo "Use \"snipfor stop\" command to stop snipfor. Enjoy!"

elif [[ "$1" == "stop" ]]; then

  # Clean up / delete the environment
  rm -r "$SNIPFOR_ENV"
  echo "Stopping snipfor..."
  echo "Goodbye for now!"

else

  echo "$1 is not a valid input... try \"start\" or \"stop\""
  
fi