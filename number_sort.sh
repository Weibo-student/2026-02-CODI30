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

selection_sort() {
  local n=${#nums[@]}

  for ((i=0; i<n-1; i++)); do
    least=$i

    for ((j=i+1; j<n; j++)); do
      if (( nums[j] < nums[least] )); then
        least=$j
      fi
    done

    temp=${nums[i]}
    nums[i]=${nums[least]}
    nums[least]=$temp
  done
  echo "${nums[@]}"
}

bubble_sort() {
  local n=${#nums[@]}
  for ((i=0; i<n-1; i++)); do
    for ((j=0; j<n-i-1; j++)); do
      if (( nums[j] > nums[j+1] )); then
        temp=${nums[j]}
        nums[j]=${nums[j+1]}
        nums[j+1]=$temp
      fi
    done
  done

  echo "${nums[@]}"
}



ask_number
bubble_sort
selection_sort
