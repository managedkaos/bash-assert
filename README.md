# bash-assert
A quick and dirty bash assertion function

![assert "It's going to be okay."](http://managedkaos.com/wp-content/uploads/2016/10/xkcd-assert-its-going-to-be-okay.png)

# What is an assertion function?
From [Wikipedia's "Assertion (software development)"](https://en.wikipedia.org/wiki/Assertion_(software_development))
>...an assertion is a statement that a predicate (Boolean-valued function, a true–false expression) is expected to always be true at that point in the code. If an assertion evaluates to false at run time, an assertion failure results, which typically causes the program to crash, or to throw an assertion exception.

So basically, the code states that a condition should be true.  Then, the code checks to see if the condition is true.  If the condition is not true, the code throws a fit. 
# Comparison Operators 
_Summarized from [The Advanced Bash Scripting Guide](http://www.tldp.org/LDP/abs/html/comparison-ops.html)_

## Integer Comparison
Operator|Definition                                               |Example
--------|---------------------------------------------------------|-------
-eq     | is equal to                                             | $a -eq $b
-ne     | is not equal to                                         | $a -ne $b
-gt     | is greater than                                         | $a -gt $b
-ge     | is greater than or equal to                             | $a -ge $b
-lt     | is less than                                            | $a -lt $b
-le     | is less than or equal to                                | $a -le $b

## String Comparison
Operator|Definition                                               |Example
--------|---------------------------------------------------------|-------
=       | is equal to                                             | $a = $b
==      | is equal to                                             | $a == $b
!=      | is not equal to                                         | $a != $b
<       | is less than, in ASCII alphabetical order               | $a < $b 
>       | is greater than, in ASCII alphabetical order            | $a > $b

# How to Use This function

# Examples

## Numeric comparisons with constants
Code:
```
assert "405 is equal to 405" "405 -eq 405"
assert "405 is not equal to 5" "405 -ne 5"
assert "405 is greater than 101" "405 -gt 101"
assert "405 is less than 710" "405 -lt 710"
assert "405 is greater than or equal to 210" "405 -ge 210"
assert "405 is less than or equal to 605" "405 -le 605"
```
Output:
```
[ OK ] 405 is equal to 405
[ OK ] 405 is not equal to 5
[ OK ] 405 is greater than 101
[ OK ] 405 is less than 710
[ OK ] 405 is greater than or equal to 210
[ OK ] 405 is less than or equal to 605
```
## Numeric comparisons with system calls
Code:
```
assert "The process count ($(ps -elf | wc -l | sed 's/ //g')) is greater than 1" "$(ps -elf | wc -l) -gt 1"
assert "Todays date ($(date +%F)) is greater than yesterday's ($(date -v-1d +%F))" "$(date +%s) -gt $(date -v-1d +%s)"
```
Output:
```
[ OK ] The process count (294) is greater than 1
[ OK ] Todays date (2016-11-10) is greater than yesterday's (2016-11-09)
```
## String comparisons with environment variables
Code:
```
assert "The pwd command output should match $PWD" "$(pwd) == $PWD"
assert "The whoami command output should match $USER" "$(whoami) = $USER"
assert "The hostname command output should match $HOSTNAME" "$(hostname) == $HOSTNAME"
```
Output:
```
[ OK ] The pwd command output should match /Users/jenkm056/Workspace/Bash-Assert
[ OK ] The whoami command output should match jenkm056
[ OK ] The hostname command output should match GL-JENKM000-M1
```
