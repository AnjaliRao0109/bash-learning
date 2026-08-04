#1. In Bash:name=Adara → Variable assignment ✅, name = Adara → Bash thinks name is a command ❌
##name=Adara
##age=22
##city=Bhubaneswar
##echo My name is $name
##echo I am $age years old
##echo I live in $city

#2.
##fruit=Apple
##price=150
##echo Fruit: $fruit
##echo Price: $price

#3.
##college=BJBAutonomousCollege
##department=Bioinformatics
##semester=10th
##echo I study in $college, Department of $department, Semester $semester.

#4. 
##echo $HOME

#5. USER INPUT: (A)
##read -p "Enter your name: " name
##echo "The name is: $name"

#5 (B).
##read -p "Enter your age: " age
##echo "The age is: $age"

#5 (C).
##read name city
##echo "Welcome $name"
##echo "You are from $city"

#5 (D)
##read Bookname Author Price
##echo $Bookname
##echo $Author
##echo $Price

#6 (A)
read -p "Enter your username: " username_var
read -sp "Enter your password :" password_var
echo
echo "The username is: $username_var"
echo "The password is: $password_var"