#!/bin/zsh
#shellcheck shell=bash

TEXT=$(LC_CTYPE=UTF-8 pbpaste) # Needed to Add LC_CTYPE=UTF-8 for it to finally work with in UTF-8...
SNIPPET_RECEIVER_DOCUMENT_PATH=$(head -n 1 /Users/$USER/snipfor-environment/path-of-document-receiver)
PAGE_NUMBER=$(head -n 1 /Users/$USER/snipfor-environment/current-page-number)

if test -z "$PAGE_NUMBER"
then 
  echo "* $TEXT" >> "$SNIPPET_RECEIVER_DOCUMENT_PATH"
else
  echo "* $TEXT (p. $PAGE_NUMBER)" >> "$SNIPPET_RECEIVER_DOCUMENT_PATH"
fi