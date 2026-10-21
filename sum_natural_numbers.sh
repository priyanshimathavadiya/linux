#!/bin/bash
   
echo "enter number:"
read n 
for (( i=1; i<=n; i++ )) 
do
 sum=$((sum+i)) 
done 

echo "sum of first $n natural number is: $sum"
