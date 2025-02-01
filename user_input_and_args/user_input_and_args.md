### **3️⃣ User Input and Arguments in Bash**  

Now that you understand variables, let’s move on to **user input and command-line arguments** in Bash scripts.  

---

## **🔹 Accepting User Input (`read` Command)**
Bash allows you to take input from users using the `read` command.

📌 **Example:**
```bash
#!/bin/bash

echo "Enter your name:"
read username
echo "Hello, $username!"
```
✅ **Run it:**  
```bash
$ ./script.sh
Enter your name:
Subbaraju
Hello, Subbaraju!
```

---

## **🔹 Command-Line Arguments (`$1, $2, ...`)**
Bash scripts can take arguments when executed.

📌 **Example:**
```bash
#!/bin/bash

echo "Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
```
✅ **Run it:**  
```bash
$ ./script.sh DevOps Rockers
Script Name: ./script.sh
First Argument: DevOps
Second Argument: Rockers
```

---

## **🔹 Handling Multiple Arguments (`$@`, `$*`, `$#`)**
| Special Variable | Meaning |
|-----------------|---------|
| `$#` | Number of arguments passed |
| `$@` | All arguments as a list |
| `$*` | All arguments as a single string |

📌 **Example:**
```bash
#!/bin/bash

echo "Total arguments: $#"
echo "All arguments: $@"

for arg in "$@"; do
  echo "Argument: $arg"
done
```
✅ **Run it:**  
```bash
$ ./script.sh Hello World Bash
Total arguments: 3
All arguments: Hello World Bash
Argument: Hello
Argument: World
Argument: Bash
```

---

### **🔹 Default Values for Arguments**
If no argument is passed, we can set a default value.

📌 **Example:**
```bash
#!/bin/bash

name=${1:-"Guest"}
echo "Hello, $name!"
```
✅ **Run it without an argument:**  
```bash
$ ./script.sh
Hello, Guest!
```
✅ **Run it with an argument:**  
```bash
$ ./script.sh Subbaraju
Hello, Subbaraju!
```

---

### **📝 Tasks for You**
1️⃣ Write a script that:
   - Asks for the user’s age using `read`.
   - If age is **greater than or equal to 18**, print `"You are an adult."`
   - Else, print `"You are a minor."`  

2️⃣ Modify the script to take the age **as an argument** instead of asking with `read`.  

Run your scripts and let me know when you're ready for the next topic! 🚀