#!/bin/bash

if [ $# -eq 0 ]
then
   echo "Uzycie: $(basename $0) user"
   exit 1
fi


gids=( $(id -G $1 ) )
names=( $(id -nG $1 ) )

i=0
while [ $i -lt ${#gids[*]} ]
do
   echo ${gids[i]} ${names[i]} 
   let i++
   #   ((i++))

done







