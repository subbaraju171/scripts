#!/bin/bash

for num in {1..10}; do
    if [ "$num" -eq 5 ]; then
        continue
    fi
    echo "Number: $num"
done

while IFS= read -r loops ; do
    echo $loops
done < loops.md