#!/usr/bin/env bash

filename=$BUDDYBUILD_SECURE_FILES/super_secret_file.txt

if [ -f "$filename" ]
then
  echo "$filename found."
else
  echo "$filename not found."
  exit 1
fi

line=$(head -n 1 $filename)

echo "First line $filename: $line"

if [ $line != "this is my secret file!" ]
then
  exit 1
fi
