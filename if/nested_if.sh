#!/bin/bash
age=66
if [ "$age" == 18 ]; then
    echo "raj is minnor"
else
    if [ "$age" -lt "60" ]; then
        echo "raj is adult"
    else
        echo "raj is senior citizen"
    fi
fi