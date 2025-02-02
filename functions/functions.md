### **6️⃣ Functions in Bash**  

Functions allow you to organize code into reusable blocks. Instead of repeating the same logic, you can define a function and call it whenever needed.

---

## **🔹 1. Defining and Calling a Function**  
📌 **Basic Syntax:**  
```bash
function function_name {
    # Code block
}
```
or  
```bash
function_name() {
    # Code block
}
```

📌 **Example: A simple function**  
```bash
#!/bin/bash

say_hello() {
    echo "Hello, DevOps Rockers!"
}

# Calling the function
say_hello
```
✅ **Output:**  
```
Hello, DevOps Rockers!
```

---

## **🔹 2. Function with Parameters**
📌 **Example: Passing parameters to a function**  
```bash
#!/bin/bash

greet_user() {
    echo "Hello, $1! Welcome to Bash scripting."
}

# Calling the function with an argument
greet_user "Subbaraju"
```
✅ **Output:**  
```
Hello, Subbaraju! Welcome to Bash scripting.
```
📌 **Explanation:**  
- `$1` refers to the first argument passed to the function.  
- If more arguments exist, they can be accessed as `$2`, `$3`, etc.  

---

## **🔹 3. Function with Return Value**
A function can return an **exit status** (0 for success, non-zero for failure).

📌 **Example: Returning a value**  
```bash
#!/bin/bash

check_even() {
    if [ $(( $1 % 2 )) -eq 0 ]; then
        return 0  # Success
    else
        return 1  # Failure
    fi
}

# Calling function
check_even 4
if [ $? -eq 0 ]; then
    echo "Number is even"
else
    echo "Number is odd"
fi
```
✅ **Output:**  
```
Number is even
```

---

## **🔹 4. Function with `local` Variables**
By default, variables inside a function are **global**. Use `local` to make them **local to the function**.

📌 **Example: Local variables inside a function**  
```bash
#!/bin/bash

my_function() {
    local my_var="I am local"
    echo "$my_var"
}

my_function
echo "$my_var"  # Will not print because my_var is local
```
✅ **Output:**  
```
I am local
```

---

## **🔹 5. Calling Functions in a Loop**
📌 **Example: Function inside a loop**  
```bash
#!/bin/bash

print_number() {
    echo "Number: $1"
}

for i in {1..5}; do
    print_number $i
done
```
✅ **Output:**  
```
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

---

### **📝 Tasks for You**
1️⃣ **Write a function** that takes a **filename** as input and counts the number of lines in it.  
2️⃣ **Write a function** that takes **two numbers** and returns their **sum**.  
3️⃣ **Modify your script** to print `"Hello, <your_name>!"` using a function.  

Try them out and let me know when you're ready for the next topic! 🚀