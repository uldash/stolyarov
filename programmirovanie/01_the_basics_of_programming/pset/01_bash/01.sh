#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo 'run script: script.sh $1 $2'
    exit 0
fi

STR="$1"
COUNTER=0
MAX=$(( $2 - 1 ))

while [ $COUNTER -lt $MAX ]; do
    COUNTER=$(( COUNTER + 1 ))
    STR="$STR $(( $1 + $COUNTER))" 
done

echo $STR