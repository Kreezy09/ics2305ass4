#!/bin/bash

# Prompt user for directory path
echo "Enter path to the directory:"
read dir

# Check if dir is true
if [ -d "$dir" ]; then
    #cd into specified dir
    cd "$dir"    
    count=0

    for file in *.bmp; do
        if [ -f "$file" ]; then
        #rename to .jpeg
            mv "$file" "$(basename "$file" .bmp).jpeg"
            ((count++))
        fi
    done

    # Output the number of images converted
    echo "Number of images converted: $count"
else
    echo "Invalid directory path. Please enter a valid directory."
fi
