#!/bin/bash 

echo "---------------------------------- Welcome To Employee Wage Compution --------------------------------------------"

isPresent=1

randomNumber=$((RANDOM%2))

#TO CHECK THE EMPLOYEE PRESENT AND ABSENT

if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi


