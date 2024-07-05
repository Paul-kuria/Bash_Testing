#!/bin/bash

BASEDIR="C:\Users\paulm\Documents\LIMA_IMAGES\MISSING\TROUBLESHOOT" 
BLOCK_MISSING="CH8"
total_images=0
# Loop through each directory in the basedir
for dir in "$BASEDIR"/*; do
    if [ -d $dir ]; then # Check if item is a directory
        for subdir in "$dir"/*; do # Loops through each item in the subdirectory
            # Check if the item is a directory and if its name is the BLOCK MISSING
            if [ -d "$subdir" ] && [ "$(basename "$subdir")" = "$BLOCK_MISSING" ]; then 

                # Count number of files in each block missing directory.
                # type f: means find all files in the subdirectory
                # wc -l: means count the number of lines, which corresponds to number of files.
                file_count=$(find "$subdir" -type f | wc -l)
                total_images=$((total_images+file_count))
                echo ""$dir"  -> $(basename "$subdir")  = $file_count"
            fi
        done
    fi
done 
echo "Total images in $MISSING_BLOCK folders is "$total_images" "