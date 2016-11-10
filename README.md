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
