##### Specs :

> Create a program that displays the arguments it receives line by line, regardless of the number of arguments.
> 
> Language: Ruby
> 
> Exec Command in Shell: ruby terre02.rb arg1 arg2 "arg3"


##### Expected result :

```zsh
$ ruby terre02.rb arg1 arg2 "arg3"
arg1
arg2
arg3

$
```

##### Steps:

    Use the ARGV built-in variable to obtain
    an array of command-line arguments passed to the Ruby script.
    For each argument in the ARGV array, do the following:
      a. Print the argument.
      b. Include a new line character after printing the argument.

##### Pseudo-code :
```
BEGIN
    // Loop through each argument passed
    // to the Ruby script
    FOR EACH argument IN ARGV DO
        // Print the argument
        OUTPUT argument
        // Print a newline character
        OUTPUT newline character
    END FOR
END
```

##### Diagrams :
```
     +-------+
     | Input |
     +-------+
         |
         V
+------------------+
| Get command-line |
| arguments using  |
| ARGV built-in    |
| variable         |
+------------------+
         |
         V
+-----------------+
| Loop through    |<---+
| arguments       |    |
+-----------------+    |
         |             |
         V             |
   +-----------+       |
   | Print     |       |
   | argument  |       |
   +-----------+       |
         |             |
         V             |
 +----------------+    |
 | Print new line |    |
 +----------------+    |
         |             |
         V             |
+-----------------+    |
| Check if        |    |
| there are more  |    |
| arguments       |----+
+-----------------+
         |
         V
   +-------------+
   | End loop if |
   | no more     |
   | arguments   |
   +-------------+
         |
         V
     +-------+
     | Output|
     +-------+
         |
         V
```
