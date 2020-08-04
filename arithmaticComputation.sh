#!/bin/bash -x

echo -e "WELCOME TO ARITHMATIC COMPUTATION AND SORTING PROBLEM"

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

result1=`awk "BEGIN {print $a + $b * $c}"`
result2=`awk "BEGIN {print $a * $b + $c}"`
