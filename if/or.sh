#!/bin/bash
cluster="prod-eks"  # Corrected syntax for variable assignment

if [ "$cluster" == "prod-eks" ] || [ "$cluster" == "preprod-eks" ]; then
    deploy_con=true 
    echo "Can be deployed. Server deploy status: $deploy_con"
else
    echo "Cannot be deployed"
fi
