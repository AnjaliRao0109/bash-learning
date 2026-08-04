#q1. Write a script that accepts two arguments: First name, Last name
echo $1 $2 ' > echo $1 $2 '
args_name=("$@")
echo ${args_name[0]} ${args_name[1]}

#q2. Write a script that accepts three numbers and prints them.
echo $1 $2 $3 ' > echo $1 $2 $3 '
args_num=("$@")
echo ${args_num[0]} ${args_num[1]} ${args_num[2]}

#q3. Write a script that prints:
#a. Script name
#b. First argument
#c. Second argument
#d. Third argument
echo $0 $1 $2 $3 '> echo $0 $1 $2 $3'

#q4. Write a script that prints all the arguments using: echo $@
#Run: bash script.sh Linux Bash Git Python
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}

#q5. Run: bash script.sh A B C D E
#What will this print? echo $@
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]} ${args[4]} ${args[5]}

#q6. Run: bash script.sh Red Green Blue Yellow
#Print only: Green, Yellow
colors=("$@")
echo ${colors[1]} ${colors[3]}

#q7. Store arguments in an array and print them in reverse order.
#Example:
#Input: bash script.sh A B C D
#Output:D C B A
num=("$@")
echo ${num[3]} ${num[2]} ${num[1]} ${num[0]}

#q8. Write a script that prints the number of command-line arguments.
#Example: bash script.sh Apple Mango Orange
#Output: Number of arguments: 3
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
echo $#