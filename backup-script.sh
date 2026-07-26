#!/bin/bash
# Script to backup directory contents to a "/Backups/<date>" directory
# to run - "./" before script in current folder or add folder to $PATH

# stores formatted date (year-month-day) in date variable and prints it to folder/directory name
date=$(date +%F)
echo "Date: $date"

# creates "$date" backup folder if it doesn't exist and overwrites if it does
if [ ! -d "/Backups/$date" ]; then
   echo "creating /Backups/$date directory"
   mkdir "/Backups/$date"
else
   echo "Backup already exists - Overriding"
fi

# add in whatever you want to backup after "-r" and before "/Backups/..." 
cp -r /Backups/$date/
