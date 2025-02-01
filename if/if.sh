Here are several examples of if conditions in Bash scripting for practice. They cover various scenarios like file checks, numeric comparisons, string comparisons, and logical operators.

Example 1: Check if a file exists
#!/bin/bash
file="example.txt"
if [ -f "$file" ]; then
    echo "The file $file exists."
else
    echo "The file $file does not exist."
fi

Example 2: Numeric comparison
#!/bin/bash
num=10
if [ $num -gt 5 ]; then
    echo "$num is greater than 5."
else
    echo "$num is not greater than 5."
fi

Example 3: String comparison
#!/bin/bash
string1="hello"
string2="world"
if [ "$string1" == "$string2" ]; then
    echo "Strings are equal."
else
    echo "Strings are not equal."
fi
Example 4: Logical AND condition
bash

#!/bin/bash
num=15
if [ $num -gt 10 ] && [ $num -lt 20 ]; then
    echo "$num is between 10 and 20."
else
    echo "$num is not between 10 and 20."
fi
Example 5: Logical OR condition
bash

#!/bin/bash
day="Sunday"
if [ "$day" == "Saturday" ] || [ "$day" == "Sunday" ]; then
    echo "It is a weekend."
else
    echo "It is a weekday."
fi
Example 6: Check if a directory exists
bash

#!/bin/bash
dir="my_folder"
if [ -d "$dir" ]; then
    echo "The directory $dir exists."
else
    echo "The directory $dir does not exist."
fi
Example 7: Check if a variable is empty
bash

#!/bin/bash
var=""
if [ -z "$var" ]; then
    echo "The variable is empty."
else
    echo "The variable is not empty."
fi
Example 8: File is readable, writable, and executable
bash

#!/bin/bash
file="example.sh"
if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
    echo "$file is readable, writable, and executable."
else
    echo "$file is not fully accessible."
fi
Example 9: Nested if conditions
bash

#!/bin/bash
age=25
if [ $age -ge 18 ]; then
    if [ $age -lt 60 ]; then
        echo "You are an adult."
    else
        echo "You are a senior citizen."
    fi
else
    echo "You are a minor."
fi
Example 10: Using case for string matching
bash

#!/bin/bash
color="blue"
case $color in
    "red")
        echo "The color is red."
        ;;
    "blue")
        echo "The color is blue."
        ;;
    "green")
        echo "The color is green."
        ;;
    *)
        echo "Unknown color."
        ;;
esac
