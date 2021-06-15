#!/bin/bash -x
declare -A coin
read -p "Enter key value" key
for((i=0;i<$key;i++))
do
random=$((RANDOM%2))
coin=$random
if [ $random -eq 0 ]
then
echo "Heads"
else
echo "Tails"
fi
done
