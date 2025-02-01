# ##read Command
# #!/bin/bash
# echo "Enter Username:"
# read username
# echo "Hello, $username how are you"

# --

##Command-Line Arguments ($1, $2, ...) enter value for each vars

# #!/bin/bash
# echo "Script Name: $0"
# echo "arg1: $1"
# echo "arg2: $2"

# ##Handling Multiple Arguments ($@, $*, $#)
# #!/bin/bash
# echo "Total arguments passed: $#"
# echo "All arguments: $@"
# for arg in "$@"; do
#  echo "arguments: $arg"
# done

#Default Values for Arguments
#!/bin/bash
name=${1:-"Guest"}
echo "hello $name"