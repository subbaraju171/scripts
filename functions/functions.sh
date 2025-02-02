# function  function_name {
#     echo "Hello, DevOps Rockers!"
# }

# function_name


# #Function with Parameters
# #!/bin/bash
# greet_user() {
#     echo "Hello, $1! Welcome to Bash scripting."
# }

# greet_user "Subbaraju"

#Function with Return Value

# #!/bin/bash
# check_even() {
#     if [ $(( $1 % 2 )) -eq 0 ]; then
#         return 0  # Success
#     else
#         return 1  # Failure
#     fi
# }

# check_even 6
# if [ $? -eq 0 ]; then
#     echo "Number is even"
# else
#     echo "Number is odd"
# fi

# #Function with local Variables

# #!/bin/bash
# my_function() {
#     local my_var="I am local"
#     echo "$my_var"
# }

# my_function
# echo "$my_var"

#!/bin/bash
print_number(){
    echo "Number: $1"
}

for i in {1..5}; do
    print_number $i
done