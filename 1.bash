#!/bin/bash

echo "What's your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "creating file for $USER_NAME $USER_NAME_file"
touch "${USER_NAME}_file"
