#!/usr/bin/env bash

START=$(date +%s)
$*
# return code
E_EXIT=$?
END=$(date +%s)
echo $(( $END - $START ))
exit $E_EXIT