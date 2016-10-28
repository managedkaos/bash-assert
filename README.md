# bash-assert
Documenting how to write an assertion function in Bash.

Comparison operators (from http://www.tldp.org/LDP/abs/html/comparison-ops.html)

# integer comparison
|Operator|Definition|Example|
|--------|----------|-------|
|-eq| is equal to | "$a" -eq "$b" |
|-ne| is not equal to | "$a" -ne "$b" |
|-gt| is greater than | "$a" -gt "$b" |
|-ge| is greater than or equal to | "$a" -ge "$b" |
|-lt| is less than | "$a" -lt "$b" |
|-le| is less than or equal to | "$a" -le "$b" |
|<| is less than (within double parentheses) |(("$a" < "$b"))|
|<=| is less than or equal to (within double parentheses) |(("$a" <= "$b"))|
|>| is greater than (within double parentheses) |(("$a" > "$b"))|
|>=| is greater than or equal to (within double parentheses) |(("$a" >= "$b"))|

# string comparison

= is equal to if [ "$a" = "$b" ]

Caution    
Note the whitespace framing the =.

if [ "$a"="$b" ] is not equivalent to the above.

== is equal to if [ "$a" == "$b" ] 

!= is not equal to if [ "$a" != "$b" ]

< is less than, in ASCII alphabetical order if [[ "$a" < "$b" ]] if [ "$a" \< "$b" ]

Note that the "<" needs to be escaped within a [ ] construct.

>
is greater than, in ASCII alphabetical order

if [[ "$a" > "$b" ]]

if [ "$a" \> "$b" ]

Note that the ">" needs to be escaped within a [ ] construct.

See Example 27-11 for an application of this comparison operator.

-z
string is null, that is, has zero length
