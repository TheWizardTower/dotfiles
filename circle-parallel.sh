#!/bin/bash

i=0
execList=()
for test in $(cat testList.txt); do
  if [ $(($i % $CIRCLE_NODE_TOTAL)) -eq $CIRCLE_NODE_INDEX ]
  then
    execList+=" $test"
  fi
  ((i=i+1))
done

test-runner ${execList[@]}
