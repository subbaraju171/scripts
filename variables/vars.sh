#!/usr/bin/env bash

name="DevOps Rockers"
echo "Hello, $name!"


##env types 

#!/bin/bash
my_var="local_var"
export my_env_var="globla_var" ## this need sourcing #source .vars.sh
echo "Local: $my_var"
echo "Global: $my_env_var"


## readonly

#!/bin/bash
readonly company="amazon"
echo "This is my current company: $company"
# Trying to change it
set -e company="Google"  # This will cause an error

# Command Substitution
#!/bin/bash
current_date=$(date)
echo "Todays date is: "$current_date""

#!/bin/bash
username="subbaraju"
logedinuser=$(whoami)
echo "Hello $username, you are logged in as $logedinuser"