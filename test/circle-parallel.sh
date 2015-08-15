#!/bin/bash

i=0
execList=()
for test in $(find . -iname "test_*.sh" | sort); do
  if [ $(($i % $CIRCLE_NODE_TOTAL)) -eq $CIRCLE_NODE_INDEX ]
  then
    execList+="$test "
  fi
  ((i=i+1))
done

echo "${execList[@]}"
bash  ${execList[@]}
