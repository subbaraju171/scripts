Major concepts of Bash scripting. Here’s a structured roadmap:  

### **Bash Scripting Roadmap**
1. **Basics of Bash & Shell Scripting**
   - What is Bash and how does it work?
   - Running Bash scripts (`chmod +x script.sh && ./script.sh`)
   - Shebang (`#!/usr/bin/env bash` vs. `#!/bin/bash`)  

2. **Variables and Data Types**
   - Declaring and using variables
   - Environment vs. local variables
   - Command substitution (`var=$(command)`)  

3. **User Input & Arguments**
   - `read` command for user input
   - Positional parameters (`$1`, `$2`, `$@`)
   - `getopts` for handling options  

4. **Conditional Statements**
   - `if-else` and `elif`
   - `test` and `[[ ]]` conditions
   - String, numeric, and file conditions  

5. **Loops and Iterations**
   - `for`, `while`, `until` loops
   - Looping through arrays and files  

6. **Functions**
   - Defining and calling functions
   - Returning values from functions
   - Using functions for modularity  

7. **File and Directory Operations**
   - Creating, deleting, and modifying files
   - Working with `find`, `grep`, and `awk`
   - File permissions (`chmod`, `chown`)  

8. **Process Management**
   - Running processes in the background (`&`, `nohup`)
   - `ps`, `kill`, and `jobs` command
   - `trap` for handling signals  

9. **Error Handling & Debugging**
   - Using `set -euo pipefail`
   - Logging and error messages
   - Debugging with `set -x`  

10. **Advanced Scripting**
    - Working with cron jobs
    - Parsing logs with `awk`, `sed`
    - Writing interactive scripts  
