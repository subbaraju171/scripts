Great! Now let's move to the **next concept: Variables and Data Types in Bash**.  

---

## **2️⃣ Variables in Bash**
In Bash, variables are used to store data like strings, numbers, and command outputs.  

### **🔹 Declaring Variables**
- No **data types** in Bash (everything is a string by default).
- No `=` spacing when assigning values.  
- Use **`$`** to access a variable.  

📌 **Example:**
```bash
#!/usr/bin/env bash

name="DevOps Rockers"
echo "Hello, $name!"
```
✅ Output:
```
Hello, DevOps Rockers!
```

---

### **🔹 Variable Scope**
There are **two types** of variables:  
1. **Local variables** → Available only in the script/session.  
2. **Environment variables** → Available to child processes.

📌 **Example:**
```bash
#!/usr/bin/env bash

my_var="local_variable"
export my_env_var="global_variable"

echo "Local: $my_var"
echo "Global: $my_env_var"
```
✅ **Task:** Run `printenv | grep my_env_var` after running the script to see if `my_env_var` is available in the shell.

---

### **🔹 Read-Only Variables**
Use `readonly` to prevent changes.

📌 **Example:**
```bash
#!/usr/bin/env bash

readonly company="Amazon"
echo "Company: $company"

# Trying to change it
company="Google"  # This will cause an error
```

---

### **🔹 Command Substitution**
Assign **command output** to a variable using **`$(command)`**.

📌 **Example:**
```bash
#!/usr/bin/env bash

current_date=$(date)
echo "Today is: $current_date"
```
✅ Output:
```
Today is: Sun Feb 04 10:00:00 UTC 2025
```

---

### **📝 Task for You**
1️⃣ Create a script that:
   - Declares a `username` variable.
   - Stores the output of `whoami` in a variable.  
   - Prints: `"Hello <username>, you are logged in as <whoami_output>"`  

2️⃣ Try making a **read-only** variable and attempt to change it.  

Run them and let me know when you're ready for the next lesson! 🚀


You're right! By default, environment variables set within a script do **not persist** outside the script’s execution.  

### **Why isn't `my_env_var` available after the script runs?**
When you run a script like `./myscript.sh`, it starts a **new shell process**, sets the variable, prints it, and then exits. Once the script ends, the variable is **lost** because it was only set in that script’s shell process.

---

### **How to Make an Environment Variable Persist?**
1️⃣ **Export the variable in the same shell session** (without running a script):
   ```bash
   export my_env_var="global_variable"
   printenv | grep my_env_var
   ```
   ✅ Now you should see the output:
   ```
   my_env_var=global_variable
   ```

2️⃣ **Export the variable in an interactive session (source the script)**:
   Instead of running `./myscript.sh`, use:
   ```bash
   source myscript.sh
   ```
   OR  
   ```bash
   . myscript.sh
   ```
   ✅ This runs the script in the **current shell session**, so `export` works globally.

3️⃣ **Make it Permanent**
   Add the export line to `~/.bashrc` or `~/.bash_profile`:
   ```bash
   echo 'export my_env_var="global_variable"' >> ~/.bashrc
   source ~/.bashrc
   ```

---

### **Task for You**
1️⃣ Try running a script that sets an environment variable and then check `printenv`.  
2️⃣ Run the script **normally** vs. using `source`.  
3️⃣ Add a variable to `~/.bashrc` and restart your terminal to see if it persists.  

Let me know when you're ready for the next topic! 🚀