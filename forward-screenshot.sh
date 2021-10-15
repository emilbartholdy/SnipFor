#!/bin/zsh
#shellcheck shell=bash

RAND_STRING=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)
SNIPPET_RECEIVER_DOCUMENT_PATH=$(head -n 1 /Users/$USER/snipfor-environment/path-of-document-receiver)
SNIPPET_RECEIVER_DOCUMENT_IMAGE_PATH=$(head -n 1 /Users/$USER/snipfor-environment/path-of-document-receiver-images)

screencapture -i "$SNIPPET_RECEIVER_DOCUMENT_IMAGE_PATH/$RAND_STRING.png"
echo "![](./images/$RAND_STRING.png)" >> "$SNIPPET_RECEIVER_DOCUMENT_PATH"