Here are some **arithmetic operation scripts** using Bash:

---

### **1. Basic Arithmetic Operations**
```bash
#!/bin/bash
a=10
b=5

echo "Addition: $((a + b))"
echo "Subtraction: $((a - b))"
echo "Multiplication: $((a * b))"
echo "Division: $((a / b))"
echo "Modulus: $((a % b))"
echo "Exponentiation: $((a ** b))"
```
**Output:**
```
Addition: 15
Subtraction: 5
Multiplication: 50
Division: 2
Modulus: 0
Exponentiation: 100000
```

---

### **2. Arithmetic Operations with User Input**
```bash
#!/bin/bash
read -p "Enter first number: " num1
read -p "Enter second number: " num2

sum=$((num1 + num2))
diff=$((num1 - num2))
prod=$((num1 * num2))
quot=$((num1 / num2))
mod=$((num1 % num2))

echo "Addition: $sum"
echo "Subtraction: $diff"
echo "Multiplication: $prod"
echo "Division: $quot"
echo "Modulus: $mod"
```
---
### **3. Floating Point Arithmetic (Using `bc`)**
Bash does **not** support floating-point math natively. Use `bc`:
```bash
#!/bin/bash
num1=10.5
num2=3.2

sum=$(echo "$num1 + $num2" | bc)
diff=$(echo "$num1 - $num2" | bc)
prod=$(echo "$num1 * $num2" | bc)
quot=$(echo "scale=2; $num1 / $num2" | bc)

echo "Addition: $sum"
echo "Subtraction: $diff"
echo "Multiplication: $prod"
echo "Division: $quot"
```
**Output (with decimals):**
```
Addition: 13.7
Subtraction: 7.3
Multiplication: 33.60
Division: 3.28
```

---

### **4. Check If a Number is Even or Odd**
```bash
#!/bin/bash
read -p "Enter a number: " num
if (( num % 2 == 0 )); then
    echo "$num is Even"
else
    echo "$num is Odd"
fi
```

---

### **5. Factorial Calculation**
```bash
#!/bin/bash
read -p "Enter a number: " num
fact=1

for ((i = 1; i <= num; i++)); do
    fact=$((fact * i))
done

echo "Factorial of $num is $fact"
```