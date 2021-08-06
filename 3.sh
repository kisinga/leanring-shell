#!/bin/bash

#simnple note taking script
#Author: Kisinga
# get the date
date=$(date)

# get the topic
topic=$1

# filename to write to
filename="${topic}notes.text"

echo $topc
# ask the user for input
read -p "Your note: " note

if [[ $note ]]
    then 
        echo "$date: $note" >> "$filename"
        echo "Note '$note' Saved to $filename"
    else
        echo "No input: Note not saved"
fi

# below are my trials to make the program write the file to the current directory

# touch `$PWD/notes.text`
