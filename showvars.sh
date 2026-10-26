#!/bin/bash

for x 
do
  if printenv "$x" > /dev/null
  then
      echo "$x=$(printenv $x)"
  fi 
done
