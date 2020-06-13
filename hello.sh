#!/bin/bash

read -p "word? :" word

if [[ $word =~ ^t ]]; then
  echo "tから始まる"
else
  echo "tから始まらない"
fi
