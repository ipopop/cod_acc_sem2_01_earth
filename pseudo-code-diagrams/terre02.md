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

1. Use the ARGV built-in variable to obtain
an array of command-line arguments passed to the Ruby script.

2. For each argument in the ARGV array, do the following:
 a. Print the argument.
 b. Include a new line character after printing the argument.

##### Pseudo-code :
```
BEGIN
    // Loop through each argument passed to the Ruby script
    FOR EACH argument : STRING IN ARGV DO

        // Print the argument
        OUTPUT argument : STRING

        // Print a newline character
        OUTPUT "\n" : STRING

    END FOR
END
```

##### Diagrams :

```
Start
 |
 |__ Loop through each argument passed to the Ruby script
 |      |
 |      |__ Print the argument
 |      |
 |      |__ Print a newline character
 |      |
 |__ End of loop
 |
End
```

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
|  Loop through   |<---+
|  arguments      |    |
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
     +--------+
     | Output |
     +--------+
```
