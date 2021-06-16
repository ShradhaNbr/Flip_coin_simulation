#!/bin/bash 
declare -A coin
read -p "Enter key value" key
HHH=0
HHT=0
THH=0
HTH=0
TTT=0
TTH=0
THT=0
HTT=0
for((i=0;i<$key;i++))
do
coin[random]="$((RANDOM%2))"
coin[random1]="$((RANDOM%2))"
coin[random2]="$((RANDOM%2))"
if [ ${coin[random]} -eq 0 -a ${coin[random1]} -eq 0 -a ${coin[random2]} -eq 0 ]
then
HHH=$(($HHH+1))
echo "HHH"
per_heads=`echo - | awk '{print ('$HHH' / '$key') * '100' }'`
echo "Percentage of HHH $per_heads"
elif [ ${coin[random]} -eq 0 -a ${coin[random1]} -eq 0 -a ${coin[random2]} -eq 1 ]
then
HHT=$(($HHT+1))
echo "HHT"
per_heads=`echo - | awk '{print ('$HHT' / '$key') * '100' }'`
echo "Percentage of HHT $per_heads"
elif [ ${coin[random]} -eq 1 -a ${coin[random1]} -eq 0 -a ${coin[random2]} -eq 0 ]
then
THH=$(($THH+1))
echo "THH"
per_heads=`echo - | awk '{print ('$THH' / '$key') * '100' }'`
echo "Percentage of THH $per_heads"
elif [ ${coin[random]} -eq 0 -a ${coin[random1]} -eq 1 -a ${coin[random2]} -eq 0 ]
then
HTH=$(($HTH+1))
echo "HTH"
per_heads=`echo - | awk '{print ('$HTH' / '$key') * '100' }'`
echo "Percentage of HTH $per_heads"
elif [ ${coin[random]} -eq 1 -a ${coin[random1]} -eq 1 -a ${coin[random2]} -eq 1 ]
then
TTT=$(($TTT+1))
echo "TTT"
per_heads=`echo - | awk '{print ('$TTT' / '$key') * '100' }'`
echo "Percentage of TTT $per_heads"
elif [ ${coin[random]} -eq 1 -a ${coin[random1]} -eq 1 -a ${coin[random2]} -eq 0 ]
then
TTH=$(($TTH+1))
echo "TTH"
per_heads=`echo - | awk '{print ('$TTH' / '$key') * '100' }'`
echo "Percentage of TTH $per_heads"
elif [ ${coin[random]} -eq 1 -a ${coin[random1]} -eq 0 -a ${coin[random2]} -eq 1 ]
then
THT=$(($THT+1))
echo "THT"
per_heads=`echo - | awk '{print ('$THT' / '$key') * '100' }'`
echo "Percentage of THT $per_heads"
elif [ ${coin[random]} -eq 0 -a ${coin[random1]} -eq 1 -a ${coin[random2]} -eq 1 ]
then
HTT=$(($HTT+1))
echo "HTT"
per_heads=`echo - | awk '{print ('$HTT' / '$key') * '100' }'`
echo "Percentage of HTT $per_heads"
fi
done

