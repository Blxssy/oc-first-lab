#!/bin/bash
h(){
  echo "Enter number"
}

while getopts ":h" flag; do
   case $flag in
      h) h
         exit;;
   esac
done

num=$num

if [ -z "$num" ]; then
  echo "Empty num"
  exit
fi


if [[ $num -ge 1 && $num -le 300 ]]
then
    for ((i = 1; i<=$num;i++))
    do
        str=$(pwgen 10 1)
        echo "dir_${str}_${i}"
    done
else
    echo "incorrect number"
fi

