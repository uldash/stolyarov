#!/usr/bin/env bash

START=$(date +%s)
$*
END=$(date +%s)
echo $(( $END - $START ))
