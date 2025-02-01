#!/bin/bash
read -p "Enter number: " num
if [ $num -gt 10 ]; then
	echo "$num is grater than 10"
else
	echo "$num is lesser than 10"
fi
