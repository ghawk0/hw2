#!/bin/sh
         
# George Hawk 
# February 28, 2018
# A shell script that backups files

DIR=`pwd`


if [ -d $DIR/$1 ]
then
    :
else
    mkdir $DIR/$1
fi

DIR=$1
shift

while ! [ -z $1 ]
do
    FILE=$1
    cp -r -u $FILE $DIR
    shift
done
