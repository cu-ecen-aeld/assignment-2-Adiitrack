#!/bin/sh

#echo $1 
#echo $2
writefile=$1
writestr=$2

if [ "$writefile" = "" ]; then
    echo "Path or Word Missing"
    exit 1
elif [ "$writestr" = "" ]; then
    echo "Path or Word Missing"
    exit 1
else
    if [ ! -f "$writefile" ]; then 
        install -Dv /dev/null $writefile
    fi
    echo $writestr >> $writefile
    exit 0
fi