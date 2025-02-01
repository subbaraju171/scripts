#!/bin/bash
file="if.sh"
if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
    echo "file can be rwx"
else
    echo "file cant be rwx"
fi