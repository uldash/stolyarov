#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo 'run script: script.sh $1 $2'
    exit 0
fi

STR="$1"
COUNTER=1

while [ $COUNTER -lt $2 ]; do
    STR="$STR $(( $1 + $COUNTER))" 
    COUNTER=$(( COUNTER + 1 ))
done

echo "$STR"