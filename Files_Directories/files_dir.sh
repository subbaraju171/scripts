##Checking if a File Exists
# #!/bin/bash
# file=test
# if [ -f "$file" ]; then
#     echo "file exits"
# else
#     echo "file does not exits"
# fi

##Creating and Writing to a File
#!/bin/bash
echo "Hello, DevOps Rockers!" > myfile.txt
echo "This is a Bash scripting tutorial." >> myfile.txt

# ##Checking if a Directory Exists
# #!/bin/bash
# dir="myfolder"
# if [ ! -d "$dir" ]; then
#     echo "Dir '$dir' does not exist"
# else
#     echo "Dir exists"
# fi


#!/bin/bash
file="myfile.txt"
if [ -f $file ]; then
    while IFS= read -r line; do
        echo "Reda line: $line"
    done < "$file"
else
    echo "File '$file' not found"
fi

##Deleting a directory

#!/bin/bash

dir="myfolder"

if [ -d "$dir" ]; then
    rm -r "$dir"
    echo "Directory '$dir' deleted."
else
    echo "Directory '$dir' does not exist."
fi

##Counting Lines, Words, and Characters in a File
#!/bin/bash

# file="$file"

# if [ -f "$file" ]; then
#     echo "Lines: $(wc -l < "$file")"
#     echo "Words: $(wc -w < "$file")"
#     echo "Characters: $(wc -c < "$file")"
# else
#     echo "File '$file' does not exist."
# fi

for i in *.sh; do
    if [ -f "$i" ]; then  # Check if it's a file
        ((count++))  # Increment counter
    fi
done

echo "Number of .sh files in the current directory: $count"