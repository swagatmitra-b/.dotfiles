#!/bin/bash


arg=$1

read -p "exec_name: " exec_name
read -p "file_name: " file_name

if gcc -o $exec_name $file_name; then 
  echo "Compiled successfully" 
  if [[ $arg == "-y" ]]; then 
    echo -e "Output: \n"
    ./$exec_name
  fi
else 
  read -p "File not found. Enter file path: " file_path
  if gcc -o $exec_name $file_path; then 
    echo "Compiled successfully"
  else 
    echo "Compilation failed"
  fi 
fi 


