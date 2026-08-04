#!/bin/bash

# Class 03: Reading User Input in Bash

# The 'read' command is used to accept input from the user.
# This lesson covers:
# 1. Reading multiple inputs
# 2. Using the -p flag (Prompt)
# 3. Using the -s flag (Silent Mode)
# 4. Reading input into an array (-a)
# 5. Using the default REPLY variable
# =====================================================

# -----------------------------------------------------
# 1. Reading Multiple Inputs
# -----------------------------------------------------

echo "Enter three names:"
read name1 name2 name3

echo "The names are: $name1, $name2, $name3"

echo

# -----------------------------------------------------
# 2. Using the -p Flag (Prompt)
# -----------------------------------------------------
# The -p flag displays a prompt on the same line before
# accepting user input.

read -p "Enter Username: " username

echo

# -----------------------------------------------------
# 3. Using the -s Flag (Silent Mode)
# -----------------------------------------------------
# The -s flag hides the user's input while typing.
# It is commonly used for passwords.

read -sp "Enter Password: " password
echo

echo "Username : $username"
echo "Password : $password"

echo

# -----------------------------------------------------
# 4. Reading Multiple Inputs into an Array
# -----------------------------------------------------
# The -a flag stores multiple values in an array.

echo "Enter names:"
read -a names

echo "First Name  : ${names[0]}"
echo "Second Name : ${names[1]}"
echo "Third Name  : ${names[2]}"

echo

# -----------------------------------------------------
# 5. Using the Default REPLY Variable
# -----------------------------------------------------
# If no variable name is provided with the 'read' command,
# Bash automatically stores the input in the REPLY variable.

echo "Enter any text:"
read

echo "You entered: $REPLY"