#!/bin/bash

# bring in the assert functionality...
source assert.sh

# example assertions; they should all pass. Change the values to see a failure
echo "Numeric comparisons (with constants)..."
assert "405 is equal to 405" "405 -eq 405"
assert "405 is not equal to 5" "405 -ne 5"
assert "405 is greater than 101" "405 -gt 101"
assert "405 is less than 710" "405 -lt 710"
assert "405 is greater than or equal to 210" "405 -ge 210"
assert "405 is less than or equal to 605" "405 -le 605"

echo
echo "Numeric comparisons (with system calls)..."
assert "The process count ($(ps -elf | wc -l | sed 's/ //g')) is greater than 1" "$(ps -elf | wc -l) -gt 1"
assert "Todays date ($(date +%F)) is greater than yesterday's ($(date -v-1d +%F))" "$(date +%s) -gt $(date -v-1d +%s)"

echo
echo "String comparisons (with environment variables)..."
assert "The pwd command output should match $PWD" "$(pwd) == $PWD"
assert "The whoami command output should match $USER" "$(whoami) = $USER"
assert "The hostname command output should match $HOSTNAME" "$(hostname) == $HOSTNAME"