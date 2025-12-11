#!/usr/bin/env bash


# OPS245 Assignment 1
# Usage: ./userservice_advance.bash
# Author: Avraham Abel

# Redirect only the final output to both the screen and the sysinfo-output file
output_file="sysinfo-output.txt"

# Check if the script is run with sudo
if [ $USER != root ]; then
  echo "This script must be run as root."
  exit
fi

# Prompts for a username and prints the UID
uid() {
  read -p "Enter the username to find the UID: " username

  # Get the UID of the entered username by reading /etc/passwd
  uid=$(grep "^$username:" /etc/passwd | cut -d':' -f3)

  # Check if the username exists and output the result
  if [ -n "$uid" ]; then
    echo "The UID of user $username is: $uid" | tee -a "$output_file"
  else
    echo "Error: User '$username' not found." | tee -a "$output_file"
  fi
}

# Prompts for a system service and checks its status
service() {
  read -p "Enter the name of the system service to check: " service_name

  # Check the status of the specified system service and output the result
  systemctl status "$service_name" 2>&1 | tee -a "$output_file"
}

# Prompt the user to choose between UID or service status
while true; do
  echo "Please choose an option:"
  echo "A) Print the UID of a user"
  echo "B) Check the status of a system service"
  read -p "Enter your choice (A/B): " choice

  case "$choice" in
    A|a)
      uid
      break
      ;;

    B|b)
      service
      break
      ;;

    *)
      echo "Invalid choice. Please enter only A or B."
      ;;
  esac
done
