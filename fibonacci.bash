#!/bin/bash
n1=0
n2=0
n3=1
for ((i = 0; i < 92; i++)); do
    echo $n3
    n1=$n2
    n2=$n3
    n3=$(($n1+$n2))
done