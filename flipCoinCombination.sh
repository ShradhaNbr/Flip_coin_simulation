#!/bin/bash -x
declare -A coin
heads=0
tails=0
read -p "Enter key value" key
for((i=0;i<$key;i++))
do
coin[random]="$((RANDOM%2))"
if [ ${coin[@]} -eq 0 ]
then
heads=$(($heads+1))
echo "Number of heads $heads"
per_heads=`echo - | awk '{print ('$heads' / '$key') * '100' }'`
echo "Percentage of heads $per_heads"
else
tails=$(($tails+1))
echo "number of tails $tails"
per_tails=`echo - | awk '{print ('$tails' / '$key') * '100' }'`
echo "Percentage of tails $per_tails"
fi
done
