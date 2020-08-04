#!/bin/bash -x

echo -e "WELCOME TO ARITHMATIC COMPUTATION AND SORTING PROBLEM\n"

#Declaration of a Dictionary
declare -A Computations

#To Compute arithmatic expression 1
function computeExpression1(){
	result1=`awk "BEGIN {print $a + $b * $c}"`
}

#To Compute arithmatic expression 2
function computeExpression2(){
	result2=`awk "BEGIN {print $a * $b + $c}"`
}

#To Compute arithmatic expression 3
function computeExpression3(){
	result3=`awk "BEGIN {print $c + $a / $b}"`
}

#To Compute arithmatic expression 4
function computeExpression4(){
	result4=`awk "BEGIN {print $a % $b + $c}"`
}

#To compute the all the arithmatic expressions
function computeTheExpressions(){
	computeExpression1
	computeExpression2
	computeExpression3
	computeExpression4
}

#To store every computation in the Dictionary
function storeResultsInDictionary(){
	Computations[computation1]=$result1
	Computations[computation2]=$result2
	Computations[computation3]=$result3
	Computations[computation4]=$result4
}

#To store values of Dictionary into Array
function storeResultsIntoArray(){
	for (( i=1; i<=4; i++ ))
	do
		resultsOfComputations[$i]=${Computations[computation$i]}
	done
}

#Sort the results in Descending order
function sortInDescending(){
	for (( i=1; i<=4; i++ ))
	do
		echo ${resultsOfComputations[$i]}
	done | sort -nr
}

#Perform arithmatic computation
function arithmaticComputations(){
	computeTheExpressions
	storeResultsInDictionary
	storeResultsIntoArray
	echo "Results in Descending order:"
	sortInDescending
}

#Main
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c
arithmaticComputations
