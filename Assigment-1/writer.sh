#!/bin/sh

# This script takes two inputs: a file path and a string.
# It creates the necessary folder structure for the given file path.
# If the file already exists, it is removed to allow for overwriting.
# Finally, the given string is appended to the file.

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
    echo "argument count is less than 2"
    exit 1
fi

# dirname: Extract directory part of a file name
if [ ! -d "$(dirname "$writefile")" ]
then
    mkdir -p "$(dirname "$writefile")"
fi

# in order to overwrite
if [ -f "$writefile" ]
then
    rm "$writefile"
fi

touch "$writefile"
echo ${writestr} >> $writefile
