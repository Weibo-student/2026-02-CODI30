#!/bin/bash

ask_number() 
{
  read -p "Enter 10 numbers: " -a nums
  if [ "${#nums[@]}" -ne 10 ]; then
    echo "Please enter exactly 10 numbers!"
    ask_number
    return
  fi
}

show_menu(){
	echo "Please select a sort method!
1. Miracle Sort
2. Thanos Sort"

	read option
	if [ "$option" -eq 1 ] || [ "$option" -eq 2 ]; then
        echo "You selected option $option."
    else
        echo "Please select a valid number!"
    fi
	
}

miracle_sort(){
  local n=${#nums[@]}
  for ((i=0; i<n-1; i++)); do
    for ((j=0; j<n-i-1; j++)); do
      if (( nums[j] > nums[j+1] )); then
      	echo "Sorting faild"
        echo "Sorry the miracle doesn't happent"
        exit
      fi
    done
  done
}

show_menu
ask_number
miracle_sort




