#!/bin/sh

# George Hawk
# February 28, 2018
# A shell script to count all the lines in a directory

for file in * # loops through files in directory
do
    LINE="$(wc -l $file | grep -o "[0-9]\+")" # gets # of lines in a file
    LINES=$(($LINES+$LINE)) # add one file line # to all
done

echo "Linecount for all files is: "$LINES
