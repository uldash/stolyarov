#!/usr/bin/env bash
find . -name "*.o" -delete -or -type f -perm 755 -and -not -name "*.py" -delete