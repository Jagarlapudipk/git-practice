#!/bin/bash

FILEPATH=$1
SEARCH_WORD=$2
USAGE(){
        echo "USAGE:: sh <filename.sh> $1 $2"
        exit 1
}
if [ $# -lt 2 ]
then
        USAGE
fi
if [ -f $FILEPATH ]
then
        echo "File exist"
else
        echo "File Doesn't exit"
fi
count=$(cat $FILEPATH | grep $SEARCH_WORD | wc -l)
echo "$SEARCH_WORD "=" $count"

