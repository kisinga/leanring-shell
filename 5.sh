#!/bin/bash

# create_script
# This script create a new bash script, sets permissions and more

# check if there is an arguement

if
    [[ ! $1 ]]; 
        then
        echo "Missing arguement"
        exit 1
fi

filename="$1"

if [[ -e $1 ]]
    then
    echo "Filename ${1} already exists"
    exit 1
fi

# @TODO check if the filename contains the extension .sh and append if neccessary
# we getting fancy now :-)


# create the file
echo "#!/bin/bash" > "$filename"

# add executable permission
chmod u+x "$filename"

# open the file in the editor
if [[ $EDITOR ]]
    then 
    $EDITOR "$filename"
    else
    echo "Script created, not starting editor because \$EDITOR is not set"
fi

exit 0