### **🔹 Next Concept: User Input in Bash Scripts**  

You can take input from users using `read` in Bash. Here's how it works:

---

### **1️⃣ Basic User Input**
```bash
#!/bin/bash

echo "Enter your name:"
read name
echo "Hello, $name!"
```
#### **📝 Explanation:**
- `read name` → Takes input and stores it in the variable `$name`.
- `echo "Hello, $name!"` → Displays the input.

**🔹 Example Usage:**
```bash
$ ./script.sh
Enter your name:
John
Hello, John!
```

---

### **2️⃣ Read Input on the Same Line**
```bash
#!/bin/bash

read -p "Enter your age: " age
echo "You are $age years old."
```
**📝 Explanation:**
- `-p "Enter your age: "` → Prompts the user **without a new line**.

**🔹 Example Output:**
```
Enter your age: 25
You are 25 years old.
```

---

### **3️⃣ Read Input with a Default Value**
If the user does not enter anything, use a default value:
```bash
#!/bin/bash

read -p "Enter your country [default: India]: " country
country=${country:-India}
echo "You are from $country."
```
- If the user presses **Enter without input**, `$country` is set to `"India"`.

---

### **4️⃣ Read Multiple Inputs**
```bash
#!/bin/bash

read -p "Enter your first name: " first
read -p "Enter your last name: " last
echo "Hello, $first $last!"
```

---

### **5️⃣ Read Password Input (Silent Mode)**
Use `-s` to hide user input (e.g., passwords):
```bash
#!/bin/bash

read -s -p "Enter your password: " password
echo -e "\nPassword saved (but not displayed)."
```

---

### **6️⃣ Read Multiple Inputs in One Command**
```bash
#!/bin/bash

read -p "Enter three numbers: " num1 num2 num3
echo "You entered: $num1, $num2, $num3"
```

---

Would you like to try these and move to the next topic? 🚀