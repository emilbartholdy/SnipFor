#!/bin/zsh
#shellcheck shell=bash

NEW_PAGE_NUMBER=$(pbpaste)
CURRENT_PAGE_NUMBER_FILE=/Users/"$USER"/snipfor-environment/current-page-number
echo "$NEW_PAGE_NUMBER" > "$CURRENT_PAGE_NUMBER_FILE"