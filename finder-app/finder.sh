#!/bin/sh

filesdir=$1
searchstr=$2
#echo $1
#echo $2

if [ "$filesdir" = "" ]; then
    echo "Path Missing"
    exit 1
elif [ "$searchstr" = "" ]; then
    echo "String Missing"
    exit 1
elif [ ! -d "$filesdir" ]; then
    echo "Directory don't exist" 
    exit 1
else
    Y=$(grep -r $searchstr $filesdir | wc -l) 
    X=$(grep -rl $searchstr $filesdir | wc -l)
    echo "The number of files are $X and the number of matching lines are $Y"
    exit 0
fi