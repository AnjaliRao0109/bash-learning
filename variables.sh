#2ND CLASS: Shell Scripting Tutorials for Beginners

#There are 2 types of variables: 1. System Variable 2. User defined variable
#1. System Variable: given by the os. defined in capital cases
#2. User defined variable: created and maintained by the user. Usually defined in lower cases but there is no strict policy as such.

#Examples of System Variable:
echo Our shell name is $BASH
echo Our shell version is $BASH_VERSION
echo Our home directory is $HOME #gives the home directory
echo Our current working directory is $PWD #gives present working directory

#Examples of User Defined Variable
##The variable name should not start with a number
name=Adara
val=10
echo The name is $name
echo The value is $val

#3rd CLASS: Shell Scripting Tutorials for Beginners
## Read User Input

#echo "Enter the names: "
#read name1 name2 name3
#echo "The names are: $name1, $name2, $name3"

read -p "username : " user_var
read -sp "password : " pass_var
echo
#-p flag allows the user to put the input the input in the same line in the command
#-s flag allows the user to put the input the input and the input is not visible
echo "username: $user_var"
echo "password: $pass_var"

#Allow the user  to enter multiple inputs and save those inputs in an array
#a flag called -a is used
echo "Enter names: "
read -a names #tells the script to read an array
echo "Names: ${names[0]} Names: ${names[1]}"

#What happens when you don't have any variables after read?
echo "Enter names"
read
echo "Names: $REPLY" #then the value gets stored in a default variable called Reply