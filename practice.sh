#Problem Statement:
#Write a Bash script that checks the status of all pods in the default namespace. If any pod is in CrashLoopBackOff or Error, print its name and restart it.

#!/bin/bash

# NAMESPACE="infra"

# # Get all pods in the namespace and check for CrashLoopBackOff or Error status
# for pod in $(kubectl get pods -n $NAMESPACE --no-headers | awk '$3=="CrashLoopBackOff" || $3=="Running" {print $1}'); do
#     echo "Restarting pod: $pod"
#     kubectl delete pod $pod -n $NAMESPACE
# done

alert=10
logfile="/var/log/disk_usage.log"

# Get the list of mounted partitions
df -h | grep "^/dev/" | awk '{print $1, $5}' | while read partition usage; do
    usage=${usage%"%"}  # Remove percentage sign

    if [ "$usage" -gt "$alert" ]; then
        warning="Warning: Disk usage exceeded $alert% on $partition ($usage%)"
        
        # Print to console
        echo "$warning"

        # Log the warning
        echo "$(date) - $warning" >> "$logfile"

        # Send email alert
        echo "$warning" | mail -s "Disk Space Alert on $partition" subbaraju171@gmail.com
    fi
done
