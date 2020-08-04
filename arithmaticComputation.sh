#!/bin/bash -x

echo -e "WELCOME TO ARITHMATIC COMPUTATION AND SORTING PROBLEM"

#Declaration of a Dictionary
declare -A Computations

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

result1=`awk "BEGIN {print $a + $b * $c}"`
result2=`awk "BEGIN {print $a * $b + $c}"`
result3=`awk "BEGIN {print $c + $a / $b}"`
result4=`awk "BEGIN {print $a % $b + $c}"`

Computations[computation1]=$result1
Computations[computation2]=$result2
Computations[computation3]=$result3
Computations[computation4]=$result4
