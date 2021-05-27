#!/usr/bin/env bash

I=1
while [ $I -le 100 ]; do
    echo $I
    I=$(( I + 1 ))
done

for C in red orange yellow green blue indigo violet; do
    echo $C
done