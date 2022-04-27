#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo 'run script: ./<script name>.sh [directory]'
    exit 1
fi

if [ -d $1 ]; then
    echo "error, dirrectory $1 if already exist"
    exit 1
else
    FILES=$(ls)
    mkdir $1
    COUNT=0
    for F in $FILES; do
        COUNT=$(( $COUNT + 1 ))
        ln -s $PWD/$F "$1/file$COUNT"
    done
fi