#!/bin/bash

# OPS245 Assignment 1
# Usage: ./userservice.bash
# Author: Avraham Abel

#output file
fout="sysinfo-output.txt"

# Test for sudo
user=$(whoami)
if [ $user != "root" ]
then
	echo "You must run this script with root privileges. Please use sudo" | tee -a "$fout"
	exit 1
fi

#options menu
#ask the user for their choice"
clear
echo "Please pick one of these options" | tee -a "$fout"
echo "Option A) Show the user ID of a user on the system" | tee -a "$fout"
echo "Option B) The status of a service" | tee -a "$fout"
read -p "Your choice (A or B): " firstin
#checks to make a valid choice
firstin=$(echo "$firstin" | sed 's/A/a/g' | sed 's/B/b/g')
while [ "$firstin" != "a" ] && [ "$firstin" != "b" ]
do
	echo "That is not a valid selection" | tee -a "$fout"
	read -p "Please pick A or B: " firstin
done

#option a and b logic
#if option a is selected
if [ "$firstin" == "a" ]
then
	#asks for the username of the user they want to check uid for
	clear
	echo "You have selected option A" | tee -a "$fout"
	read -p "Please select a user by typing in their username: " username
	#checks to see if the username exists in the /etc/passwd file
	if grep "^$username:" /etc/passwd >> /dev/null 2>> /dev/null
	then
		#grabs the uid of the username from the /etc/passwd file
		iduser=$(grep "^$username:" /etc/passwd | cut -d: -f3)
		clear
		echo "The UID of the user $username is $iduser" | tee -a "$fout"
	else
		echo "The user $username does not exist on this system." | tee -a "$fout"
		exit 2
	fi
#if option b is selected
else
	clear
	echo "You have selected option B" | tee -a "$fout"
	read -p "Please enter the name of the service you would like to to check the status of: " serstat
	systemctl status "$serstat" 2>&1 | tee -a "$fout"
fi
