### **7️⃣ Working with Files and Directories in Bash**  

Now that you understand functions, let's move on to handling **files and directories** in Bash. This is crucial for automation tasks, log management, and system administration.  

---

## **🔹 1. Checking if a File Exists**
📌 **Example: Check if a file exists before performing an action**  
```bash
#!/bin/bash

file="test.txt"

if [ -f "$file" ]; then
    echo "File '$file' exists."
else
    echo "File '$file' does not exist."
fi
```
✅ **Explanation:**  
- `-f` checks if the file exists and is a **regular file** (not a directory).  
- If the file exists, it prints a message; otherwise, it prints that it doesn't exist.  

---

## **🔹 2. Creating and Writing to a File**
📌 **Example: Creating a file and writing text to it**  
```bash
#!/bin/bash

echo "Hello, DevOps Rockers!" > myfile.txt
echo "This is a Bash scripting tutorial." >> myfile.txt
```
✅ **Explanation:**  
- `>` creates or overwrites a file.  
- `>>` appends data to an existing file.  

---

## **🔹 3. Checking if a Directory Exists**
📌 **Example: Check if a directory exists before creating it**  
```bash
#!/bin/bash

dir="myfolder"

if [ ! -d "$dir" ]; then
    echo "Directory '$dir' does not exist. Creating it now..."
    mkdir "$dir"
else
    echo "Directory '$dir' already exists."
fi
```
✅ **Explanation:**  
- `-d` checks if the **directory** exists.  
- `!` negates the condition (`if not exists`).
- `mkdir` creates the directory if it doesn’t exist.

---

## **🔹 4. Reading a File Line by Line**
📌 **Example: Processing a file's contents line by line**  
```bash
#!/bin/bash

file="test.txt"

if [ -f "$file" ]; then
    while IFS= read -r line; do
        echo "Read line: $line"
    done < "$file"
else
    echo "File '$file' not found."
fi
```
✅ **Explanation:**  
- `IFS=` prevents leading/trailing spaces from being trimmed.  
- `read -r` ensures backslashes are not treated as escape characters.  
- `< "$file"` tells Bash to read from the file.

---

## **🔹 5. Deleting Files and Directories**
📌 **Example: Deleting a file**  
```bash
#!/bin/bash

file="test.txt"

if [ -f "$file" ]; then
    rm "$file"
    echo "File '$file' deleted."
else
    echo "File '$file' does not exist."
fi
```
📌 **Example: Deleting a directory**  
```bash
#!/bin/bash

dir="myfolder"

if [ -d "$dir" ]; then
    rm -r "$dir"
    echo "Directory '$dir' deleted."
else
    echo "Directory '$dir' does not exist."
fi
```
✅ **Explanation:**  
- `rm filename` removes a file.  
- `rm -r directory` removes a directory and its contents.

---

## **🔹 6. Counting Lines, Words, and Characters in a File**
📌 **Example: Using `wc` command**  
```bash
#!/bin/bash

file="test.txt"

if [ -f "$file" ]; then
    echo "Lines: $(wc -l < "$file")"
    echo "Words: $(wc -w < "$file")"
    echo "Characters: $(wc -c < "$file")"
else
    echo "File '$file' does not exist."
fi
```
✅ **Explanation:**  
- `wc -l` → Counts lines  
- `wc -w` → Counts words  
- `wc -c` → Counts characters  

---

### **📝 Tasks for You**
1️⃣ Write a script that **creates a file**, writes a message into it, then **displays its contents**.  
2️⃣ Modify the script to **check if a file exists before writing** to prevent overwriting.  
3️⃣ Create a script that counts **how many `.sh` files** exist in the current directory.  

Try them out, and let me know when you're ready for the next topic! 🚀