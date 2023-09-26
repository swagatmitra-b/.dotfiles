#!/bin/bash

entry_count=0

declare -A hashMap

create_hashMap() {
  read -p "Enter KV pair: " property value
  hashMap["$property"]="$value"
}

display_Map() {
  for key in ${!hashMap[@]}; do 
    echo "${key}: ${hashMap["$key"]}"
  done
}  

read -p "Enter size of hashmap: " size

while [ $entry_count -lt $size ]; do 
  create_hashMap  
  ((entry_count++))
done

read -p "Enter hash_map name: " hash_map

echo $(display_Map) > $hash_map.hm

read -p "Do you want to print the hash_map? (y/n) " response

if [[ "$response" == "y" ]]; then 
  display_Map
else 
  exit 0
fi



  
