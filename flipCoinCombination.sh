#!/bin/bash 
declare -A coin
read -p "Enter key value" key
HH=0
HT=0
TH=0
TT=0
for((i=0;i<$key;i++))
do
coin[random]="$((RANDOM%2))"
coin[random1]="$((RANDOM%2))"
if [ ${coin[random]} -eq 0 -a ${coin[random1]} -eq 0 ]
then
HH=$(($HH+1))
echo "HH"
per_heads=`echo - | awk '{print ('$HH' / '$key') * '100' }'`
echo "Percentage of HH $per_heads"
elif [ ${coin[random]} -eq 0 -a ${coin[random1]} -eq 1 ]
then
HT=$(($HT+1))
echo "HT"
per_heads=`echo - | awk '{print ('$HT' / '$key') * '100' }'`
echo "Percentage of HT $per_heads"
elif [ ${coin[random]} -eq 1 -a ${coin[random1]} -eq 0 ]
then
TH=$(($TH+1))
echo "TH"
per_heads=`echo - | awk '{print ('$TH' / '$key') * '100' }'`
echo "Percentage of TH $per_heads"
else
TT=$(($TT+1))
echo "TT"
per_tails=`echo - | awk '{print ('$TT' / '$key') * '100' }'`
echo "Percentage of TT $per_tails"
fi
done

