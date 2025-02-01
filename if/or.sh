#!/bin/bash
cluster="prod-eks"
if [ "$cluster" == "prod-eks" ] || [ "$cluster" == "preprod" ]; then
    echo "cluster is  prod-eks"
else
    echo "cluster is preprod"
fi
