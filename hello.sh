#!/bin/bash
# if

read -p "Name? " name

if [ "$name" = "if" ]; then
  echo "welcomem, if"
elif [ "$name" = "elif" ]; then
  echo "welcome, elif"
else
  echo "you are not allowed"
fi