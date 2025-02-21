#!/bin/bash
dev_clusters=25
prod_clusters=50
if [ $dev_clusters -gt $prod_clusters ]; then
    echo "dev_clusters are graterthan prod_clusters"
else
    echo "dev_clusters are lessthan prod_clusters"
fi