#!/bin/bash
echo "enter age"
read num
if [ "$num" -gt "18" ];then
    echo "you are  major"
elif [ "$num" -lt "18"]; then
    echo "you are minor"
else
    echo "you major"
fi
