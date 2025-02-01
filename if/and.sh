#!/bin/bash
cluster_version="50"

if [ "$cluster1" -ge "30" ] && [ "$cluster2" -ge "30" ]; then
    echo "clusters version grater than v30"
else
    echo "clusters version less than v30"
fi