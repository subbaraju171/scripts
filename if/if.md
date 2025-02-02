## **4️⃣ Conditional Statements (`if`, `elif`, `else`)**  

In Bash, we use **if-else statements** to control the flow based on conditions.

### **🔹 Basic `if` Statement**  
📌 **Syntax:**
```bash
#!/bin/bash

if [ condition ]; then
    # Code to execute if condition is true
fi
```
📌 **Example:**
```bash
#!/bin/bash

num=10

if [ $num -gt 5 ]; then
    echo "$num is greater than 5"
fi
```

---

### **🔹 `if-else` Statement**  
📌 **Example:**
```bash
#!/bin/bash

echo "Enter a number:"
read num

if [ $num -gt 10 ]; then
    echo "Greater than 10"
else
    echo "Less than or equal to 10"
fi
```
✅ **Run it:**
```
Enter a number:
7
Less than or equal to 10
```

---

### **🔹 `elif` Statement (Multiple Conditions)**  
📌 **Example:**
```bash
#!/bin/bash

echo "Enter a number:"
read num

if [ $num -gt 10 ]; then
    echo "Greater than 10"
elif [ $num -eq 10 ]; then
    echo "Equal to 10"
else
    echo "Less than 10"
fi
```

---

### **🔹 String Comparisons**
| Operator  | Meaning |
|-----------|---------|
| `=`       | Equal to |
| `!=`      | Not equal to |
| `-z`      | String is empty |
| `-n`      | String is not empty |

📌 **Example:**
```bash
#!/bin/bash

echo "Enter your name:"
read name

if [ -z "$name" ]; then
    echo "You didn't enter a name!"
else
    echo "Hello, $name!"
fi
```

---

### **🔹 Logical Operators**
| Operator | Meaning |
|----------|---------|
| `&&`     | AND |
| `||`     | OR |

📌 **Example:**
```bash
#!/bin/bash

echo "Enter a number:"
read num

if [ $num -gt 10 ] && [ $num -lt 20 ]; then
    echo "Number is between 10 and 20"
else
    echo "Number is out of range"
fi
```

---

### **📝 Tasks for You**
1️⃣ Write a script that:
   - Asks the user for a **password**.
   - If the password is `"DevOpsRockers"`, print `"Access Granted"`, otherwise print `"Access Denied"`.

2️⃣ Modify your **age script**:
   - If age is **less than 18**, print `"You are a minor"`.
   - If age is **between 18 and 60**, print `"You are an adult"`.
   - If age is **greater than 60**, print `"You are a senior citizen"`.

Run your scripts and let me know when you're ready for the next concept! 🚀