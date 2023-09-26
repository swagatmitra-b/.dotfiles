#!/bin/bash

read -p "file_path: " file_path
read -p "find: " find_word
read -p "replace: " replace_word

new_text=$(sed s/$find_word/$replace_word/g $file_path)

if echo $new_text > $file_path; then
  echo "replaced successfully"
fi 
