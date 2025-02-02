### ** Loops in Bash (For, While, Until)**  

Loops help us repeat a block of code multiple times. Bash provides three types of loops:  
- `for` loop  
- `while` loop  
- `until` loop  

---

## **🔹 1. `for` Loop**  
Used to iterate over a list of values.

📌 **Example: Loop through a list**  
```bash
#!/bin/bash

for item in Apple Banana Cherry; do
    echo "Fruit: $item"
done
```
✅ **Output:**  
```
Fruit: Apple
Fruit: Banana
Fruit: Cherry
```

📌 **Example: Loop through numbers using `{start..end}`**  
```bash
#!/bin/bash

for num in {1..5}; do
    echo "Number: $num"
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

📌 **Example: Loop with `seq`**  
```bash
#!/bin/bash

for num in $(seq 1 2 10); do
    echo "Step: $num"
done
```
✅ **Output:**  
```
Step: 1
Step: 3
Step: 5
Step: 7
Step: 9
```

📌 **Example: Loop through files in a directory**  
```bash
#!/bin/bash

for file in *.sh; do
    echo "Found script: $file"
done
```

---

## **🔹 2. `while` Loop**  
Runs as long as the condition is **true**.

📌 **Example: Countdown using `while` loop**  
```bash
#!/bin/bash

num=5
while [ $num -gt 0 ]; do
    echo "Countdown: $num"
    num=$((num - 1))
done
echo "Blast off!"
```
✅ **Output:**  
```
Countdown: 5
Countdown: 4
Countdown: 3
Countdown: 2
Countdown: 1
Blast off!
```

📌 **Example: Read file line by line**  
```bash
#!/bin/bash

while IFS= read -r line; do
    echo "Line: $line"
done < myfile.txt
```

---

## **🔹 3. `until` Loop**  
Runs as long as the condition is **false**.

📌 **Example: Counting up using `until` loop**  
```bash
#!/bin/bash

num=1
until [ $num -gt 5 ]; do
    echo "Number: $num"
    num=$((num + 1))
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

### **🔹 Breaking and Continuing Loops**
- `break` → Exit the loop completely.
- `continue` → Skip the current iteration and move to the next one.

📌 **Example: Stop loop when number is 3 (`break`)**  
```bash
#!/bin/bash

for num in {1..5}; do
    if [ $num -eq 3 ]; then
        break
    fi
    echo "Number: $num"
done
```
✅ **Output:**  
```
Number: 1
Number: 2
```

📌 **Example: Skip number 3 (`continue`)**  
```bash
#!/bin/bash

for num in {1..5}; do
    if [ $num -eq 3 ]; then
        continue
    fi
    echo "Number: $num"
done
```
✅ **Output:**  
```
Number: 1
Number: 2
Number: 4
Number: 5
```

---

### **📝 Tasks for You**
1️⃣ **Write a script** that prints numbers **1 to 10** using a `while` loop.  
2️⃣ **Modify your script** to **skip number 5** using `continue`.  
3️⃣ **Write a script** that reads a text file line by line and prints each line.  

Try them out and let me know when you're ready for the next topic! 🚀