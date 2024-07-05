#!/bin/bash

# Variable Directories
echo "Please enter the farm-ID and date in this notation. Eg: 00x-00x 2024-xx-xx"

read FARM DATE

# Initialize Directories
BACKUP="Pictures/LIMA/$DATE/$FARM"
TOAWS="Desktop/Drone_DATA/_backup/$DATE"

# Variables
total_count=0

# Iterate through each directory in the parent dir
for dir in "$BACKUP"/*; do 
    # Check if its a directory
    if [ -d "$dir" ]; then 
        # Get the number of files in the directory
        count=$(ls "$dir" | wc -l)

        # Count the total files in all the subdirs
        total_count=$((total_count+count))

        # Print the directory name and the file count
        echo "$(basename "$dir"): $count"
    fi 
done 

# Print the total number of files
echo "Total number of files: $total_count"