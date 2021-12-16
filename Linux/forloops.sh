#!/bin/bash

states=('Minnesota' 'Iowa' 'Illinois' 'Michigan' 'California')

for state in ${states[@]}
do
  if [ $state == 'Iowa' ];
  then
	echo 'Plenty of cowbell'
  else
	echo 'Needs more cowbell'
  fi
done

nums=$(echo {0..9})

for num in ${nums[@]}
do
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
  then
	echo $num
  fi
done

lout=$(ls)

for item in ${lout[@]}
do 
  echo $item
done


