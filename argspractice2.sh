#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Demo script for argument-handling exercises (Q1..Q8).
# Run examples:
#   bash argspractice2.sh Alice Bob 10 20 30 Red Green Blue Yellow A B C D E

if [ "$#" -lt 1 ]; then
  cat <<EOF
Usage: $0 <args...>
This script demonstrates solutions to several argument-related problems.
Provide at least 1 argument; some demos require more (see comments).
EOF
  exit 1
fi

# Put all positional args into an array for easier handling.
args=("$@")

# Q1: Accept two arguments: First name, Last name
q1() {
  printf "Q1: First Last: %s %s\n" "${args[0]:-}" "${args[1]:-}"
}

# Q2: Accept three numbers and prints them
q2() {
  printf "Q2: Three numbers: %s %s %s\n" "${args[0]:-}" "${args[1]:-}" "${args[2]:-}"
}

# Q3: Print script name and first three arguments
q3() {
  printf "Q3: Script name: %s\n" "$0"
  printf "    First arg: %s\n" "${args[0]:-}"
  printf "    Second arg: %s\n" "${args[1]:-}"
  printf "    Third arg: %s\n" "${args[2]:-}"
}

# Q4: Print all arguments using "\$@"
q4() {
  printf "Q4: All args (using \"\$@\"):"
  printf " %s" "${args[@]}"
  printf "\n"
}

# Q5: Demonstrate echo $@ behaviour
q5() {
  printf "Q5: echo \$@ prints all positional parameters separated by spaces:\n"
  printf "    ->"
  printf " %s" "$@"
  printf "\n"
}

# Q6: Given args Red Green Blue Yellow, print Green, Yellow
q6() {
  printf "Q6: Selected: %s, %s\n" "${args[1]:-}" "${args[3]:-}"
}

# Q7: Print arguments in reverse order (generic)
q7() {
  printf "Q7: Reverse order:"
  for ((i=${#args[@]}-1; i>=0; i--)); do
    printf " %s" "${args[i]}"
  done
  printf "\n"
}

# Q8: Print number of command-line arguments
q8() {
  printf "Q8: Number of arguments: %d\n" "$#"
}

# Run all demos (you can call functions separately if you prefer)
q1
q2
q3
q4
q5
q6
q7
q8
