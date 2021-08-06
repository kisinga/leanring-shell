#!/bin/bash

#simnple note taking script
#Author: Kisinga

echo $(date): $* >> notes.text
echo Note Saved!

# below are my trials to make the program write the file to the current directory

# touch `$PWD/notes.text`
