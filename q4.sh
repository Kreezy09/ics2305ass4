#!/bin/bash

# Loop through all items in the current directory
for item in *; do
    # Check if the item is a directory and its empty
    if [[ -d "$item"  && -z "$(ls -A "$item")" ]]; then
        timeCreated=$(stat -c %W "$item")
        # Print the name of the directory and when it was created
        echo "Name: $item, Created on: $(date -d @$timeCreated)"
    fi
done

# Count no of empty directories
count=$(find . -type d -empty | wc -l)
echo "Empty directories: $count"