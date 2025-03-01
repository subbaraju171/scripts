#!/bin/bash
# a=10
# b=5

# echo "Addition: $((a + b ))"
# echo "Subtraction: $((a - b))"
# echo "Multiplication: $((a * b))"
# echo "Division: $((a / b))"
# echo "Modulus: $((a % b))"
# echo "Exponentiation: $((a ** b))" 

# read -p "Enter a value:" a
# read -p "Enter b value:" b

# echo "Addition: $((a + b ))"
# echo "Subtraction: $((a - b))"
# echo "Multiplication: $((a * b))"
# echo "Division: $((a / b))"
# echo "Modulus: $((a % b))"
# echo "Exponentiation: $((a ** b))" 

# #!/bin/bash

# a=10.5
# b=5.5

# sum=$(echo "$a + $b" | bc)
# sub=$(echo "$a - $b" | bc)
# mul=$(echo "$a * $b" | bc)
# div=$(echo "scale=2; $a / $b" | bc) ## bc requires floating-point precision to be explicitly defined using scale=2 for division
# # mod=$(echo "$a % $b" | bc -l)   #(%) in bc only works with integers. Since a=10.5 and b=5.5 are floating-point numbers, bc does not support the direct use of %.
# exp=$(echo "e($b * l($a))" | bc -l)  

# echo "Addition: $sum"
# echo "Subtraction: $sub"
# echo "Multiplication: $mul"
# echo "Division: $div"
# echo "Exponentiation: $exp"

# read a
# if (($a % 2 == 0)); then
#     echo "$a is even"
# else
#     echo "$a is odd"
# fi

# Tabel Calculations:
#!/bin/bash
# read -p "Enter factorila to calculate: " table
# max=20
# for ((i = 1; i<= max; i++));do
#     echo "$i * $table= $((i * table))"
# done

## find largest of 3 numbers

#!/bin/bash
# read -p "Enter first number: " a
# read -p "Enter second number: " b
# read -p "Enter third number: " c

# if (( $a >= $b && $a >=$c )); then
#     echo "$a is largest number"
# elif (( $b >= $a && $b >= $c )); then
#     echo "$b is largest number"
# else
#     echo "$c is largest number"
# fi

# ## Sum of Digits of a Number
# num=12345
# echo "Sum of Digits of a Number: $(echo "$num" | sed 's/./&+/g' | sed 's/+$//' | bc)"

## Find the Sum of an Array 
#!/bin/bash
# arr=(10 20 30 40 50) # Define an array with five elements
# sum=0

# for num in "${arr[@]}"; do # Iterate through each element in the array
#     sum=$((sum + num))
# done

# echo "Sum of array elements: $sum"

# Find the Average of an Array
# #!/bin/bash
# arr=(10 20 30 40 50)
# sum=0
# n=${#arr[@]}  #Get the number of elements in the array

# for num in "${arr[@]}"; do
#     sum=$((sum + num))
# done

# avg=$((sum / n))
# echo "Average: $avg"
