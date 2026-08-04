#How to pass arguments in a bash shell script?

##The no. of arguments passed will be stored like this consecutively
echo $0 $1 $2 $3  ' > echo $1 $2 $3 '
#1. here the $0 will be the script name

##Another way through which we can parse the arguments into an array and then use them
#1. we can declare any variable name like "args", then there is a default variable in which the argument goes as an array
args=("$@") #the $@ stores the argument as an array, to pass them, to pass them you need to declare the variable and assign the argument which are stored in this $@ into this argument

#here the $0 will be the first argument
echo  ${args[0]} ${args[1]} ${args[2]} ${args[3]}

#contains all the arguments.
echo $@

#if we want to know the no. of arguments passed to the bash script
echo $#
