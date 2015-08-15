#!/bin/bash

i=0
execList=()
for test in $(cat testList); do
  if [ $(($i % $CIRCLE_NODE_TOTAL)) -eq $CIRCLE_NODE_INDEX ]
  then
    execList+=" $test"
  fi
  ((i=i+1))
done

bash -c "${execList[@]}"
