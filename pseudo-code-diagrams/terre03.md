##### Specs :

Create a program that displays the alphabet
  from the given letter given in argument
  in lower case followed by a line break.

Warning: your program must use a loop.

Langage : PHP

Exec Command in Shell : php terre03.php m

##### Expected result :

```zsh
$ php terre03.php m
mnopqrstuvwxyz

$ 
```

##### Steps:

Get the argument passed to the program.

Define the alphabet as a list of lowercase letters of the English alphabet using the range function.

Check if the argument is a valid letter (a to z only).

If the argument is not valid, print an error message and exit.

If the argument is valid, convert it to lowercase and print it.

Loop through the alphabet list backwards:
	a. If the current letter is greater than the argument, print it.
	b. If the current letter is less than or equal to the argument, do nothing.

Print a new line character to create a new line.

##### Pseudo-code :
```
BEGIN
    // Get the argument passed to the program
    argument ← argv[1]

    // Define the alphabet as a list
    // of lowercase letters of the English alphabet
    alphabet ← range('z', 'a')

    // Check if the argument is a valid letter (a to z only)
    IF argument does not match /^[a-z]$/i THEN
        // Print an error message and exit
        OUTPUT "'$argument' is not a valid argument (a to z only)"
        OUTPUT newline character
        EXIT
    END IF

    // Convert the argument to lowercase and print it
    lowerArg ← strtolower(argument)
    OUTPUT lowerArg

    // Loop through the alphabet list backwards
    FOR i ← count(alphabet) - 1 TO 0 STEP -1 DO
        // If the current letter is greater than the argument, print it
        IF alphabet[i] > lowerArg THEN
            OUTPUT alphabet[i]
        // If the current letter is less than or equal to the argument, do nothing
        ELSE
        END IF
    END FOR

    // Print a newline character to create a new line
    OUTPUT newline character
END
```

##### Diagrams :
```
Start
 |
 |__ Get the argument passed to the program
 |      |
 |      |__ Define variable argument as argv[1]
 |      |
 |      |__ Define variable alphabet
 |          as a list of lowercase letters 
 |          of the English alphabet using 
 |          the range function.
 |             |
 |             |__ Check if the argument is a valid letter
 |             |   (a to z only)
 |             |       |
 |             |       |__ If the argument is not valid, 
 |             |       |   print an error message and exit.
 |             |       |
 |             |       |__ If the argument is valid, 
 |             |       |   convert it to lowercase and print it.
 |             |
 |             |__ Loop through the alphabet list backwards:
 |                 |
 |                 |__ If the current letter is greater than the argument, 
 |                 |   print it.
 |                 |
 |                 |__ If the current letter is less than or equal to the argument, 
 |                     do nothing.
 |
 |__ Print a newline character to create a new line.
 |
End
```

```
     +-------+
     | Input |
     +-------+
         |
         V
+-------------------+
| Define variable   |
| argument as       |
| the first command |
| line argument     |
+-------------------+ 
         |
         V
+--------------------+
| Define variable    |
| alphabet as an     |
| array of lowercase |
| letters            |
+--------------------+
         |
         V
+-----------------+
| Check if        |
| the argument is |
| a valid letter  |
+-----------------+
         |
         V
   +-------------+
   | Print error |
   | message     |
   | if invalid  |
   +-------------+
         |
         V
+------------------+
| Convert argument |
| to lowercase     |
+------------------+
         |
         V
   +-------------+
   | Print first |
   | letter of   |
   | argument    |
   +-------------+
         |
         V
+------------------+
| Loop through     |
| alphabet letters |
+------------------+
         |
         V
+-----------------+
| Check if        |
| current letter  |
| is greater than |
| argument        |
+-----------------+
         |
         V
   +---------+
   | Print   |
   | current |
   | letter  |
   +---------+
         |
         V
   +----------+
   | End loop |
   +----------+
         |
         V
   +-----------+
   | Print new |
   | line      |
   +-----------+
         |
         V
    +--------+
    | Output |
    +--------+
```
