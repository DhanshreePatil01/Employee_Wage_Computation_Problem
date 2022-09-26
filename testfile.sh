#!/bin/bash 

echo "---------------------------------- Welcome To Employee Wage Compution --------------------------------------------"

isPresent=1

randomNumber=$((RANDOM%2))
caseChoice=$randomNumber
read -p "To use case four case statement:"caseChoice

#TO CHECK THE EMPLOYEE PRESENT AND ABSENT

if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"

case "$caseChoice" in
0)echo "To calculate Daily Employee Wage"

function calculateDailyEmployeeWage(){
	read -p "Assume Wage per hour is :" isWagePerHour "rupees"
	read -p "To full day hours is :" isFullDayHour
	calculateEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
	echo "To calculate daily employee wage :" $calculateEmployeeWage "rupees"
}
calculateDailyEmployeeWage
;;
1)echo "To calculate part time Employee and wage"

function partTimeEmployeeAndWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		read -p "To part time hour is :" isFullDayHour
		calculatePartTimeEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
		echo "To calculate part time employee and wage :" $calculatePartTimeEmployeeWage "rupees"
			}
partTimeEmployeeAndWage
;;
*)echo "No Choice"
;;
esac
else
   echo "Employee Absent"
 fi
