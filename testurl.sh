#!/bin/sh

# George Hawk
# February 28, 2018
# A shell script to check if urls are valid


if [ -r  $FILE ] # checks if file is readable
then
    : # this does nothing
else
    echo "this is a bad file"
    exit 1
fi

FILE=`cat $1`

for line in $FILE # loops through file
do   # checks if urls exist
    if curl --output /dev/null --silent --head --fail $line
    then
	continue
    else
	echo "NOT found: "$line
    fi
done

