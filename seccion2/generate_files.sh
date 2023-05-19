#!/bin/bash

FILESDIR=random_files
mkdir -p $FILESDIR
EXTS=(".sh" ".txt" ".mp3" ".wav" ".c" ".py" ".mp4" ".mkv" ".doc" ".ppt" ".png" ".gif")

for i in {1..20}; do
    # Generate a random file name with extension
    RANDEXT=${EXTS[ $RANDOM % ${#EXTS[@]} ]}
    RANDNAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
    FILENAME=$RANDNAME$RANDEXT
    
    # Create an empty file with the generated name
    touch $FILESDIR/$FILENAME
done