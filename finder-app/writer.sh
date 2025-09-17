#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Incorrect number of arguments specified.
    usage: writer.sh <writefile> <writestr>"
    exit 1
fi

echo "$2" > "$1"

if [ $? -ne 0 ]
then
    echo "Failed to write to file"
    exit 1
fi
