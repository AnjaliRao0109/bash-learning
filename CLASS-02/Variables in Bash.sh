#!/bin/bash

# Class 02: Variables in Bash

# There are two types of variables in Bash:
# 1. System Variables
# 2. User-Defined Variables

# -----------------------------------------------------
# 1. System Variables
# -----------------------------------------------------
# System variables are predefined by the operating system
# or the Bash shell. They are commonly written in uppercase.

echo "System Variables"

echo "Shell Name              : $BASH"
echo "Bash Version            : $BASH_VERSION"
echo "Home Directory          : $HOME"
echo "Current Working Directory : $PWD"

echo

# -----------------------------------------------------
# 2. User-Defined Variables
# -----------------------------------------------------
# User-defined variables are created by the programmer.
#
# Rules:
# - Variable names should not begin with a number.
# - Do not put spaces around the '=' operator.
# - Variable names are case-sensitive.

name="Anjali"
value=10

echo "User-Defined Variables"

echo "Name  : $name"
echo "Value : $value"