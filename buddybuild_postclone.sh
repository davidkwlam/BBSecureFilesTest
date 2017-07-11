#!/usr/bin/env bash

filename=$BUDDYBUILD_SECURE_FILES/super_secret_file.txt

if [ -f "$filename" ]
then
  echo "$filename found."
else
  echo "$filename not found."
  exit 1
fi
