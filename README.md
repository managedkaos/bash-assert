# bash-assert
A quick and dirty bash assertion function

# Comparison operators 
_(summarized from http://www.tldp.org/LDP/abs/html/comparison-ops.html)_

## Integer Comparison
Operator|Definition                                               |Example
--------|---------------------------------------------------------|-------
-eq     | is equal to                                             | $a -eq $b
-ne     | is not equal to                                         | $a -ne $b
-gt     | is greater than                                         | $a -gt $b
-ge     | is greater than or equal to                             | $a -ge $b
-lt     | is less than                                            | $a -lt $b
-le     | is less than or equal to                                | $a -le $b
<       | is less than (within double parentheses)                | (($a < $b))
<=      | is less than or equal to (within double parentheses)    | (($a <= $b))
>       | is greater than (within double parentheses)             | (($a > $b))
>=      | is greater than or equal to (within double parentheses) | (($a >= $b))

## String Comparison
Operator|Definition                                               |Example
--------|---------------------------------------------------------|-------
=       | is equal to                                             | $a = $b
==      | is equal to                                             | $a == $b
!=      | is not equal to                                         | $a != $b
<       | is less than, in ASCII alphabetical order               | $a < $b 
>       | is greater than, in ASCII alphabetical order            | $a > $b
-z      | string is null, that is, has zero length                |