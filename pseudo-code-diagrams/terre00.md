##### Specs :

> Create a program that displays the alphabet
> 
> in lowercase letters
>
> followed by a line break.


##### Expected result :

```zsh
$ python3 terre00.py
abcdefghijklmnopqrstuvwxyz

$ 
```

##### Steps:

1. Import the string module.
2. Create a list of lowercase letters of the English alphabet using the ascii_lowercase method from the string module.
3. For each letter in the alphabet list, do the following:
   a. Print the letter.
   b. Do not include a new line character after printing the letter.
4. After the loop, print a new line character to create a new line.


##### Pseudo-code :

```
BEGIN
    // Define a string variable containing lowercase alphabet
    alphabet : STRING = "abcdefghijklmnopqrstuvwxyz"

    // Loop through each letter in the alphabet
    FOR EACH letter : CHAR IN alphabet DO
        OUTPUT letter : CHAR
    END FOR

    // Print a newline character to end the line
    OUTPUT newline character : CHAR
END
```


##### Diagrams :

```
Start
 |
 |__ Import string module
 |      |
 |      |__ Define variable alphabet
 |          as a list of lowercase letters 
 |          of the English alphabet using 
 |          the ascii_lowercase method 
 |          from the string module.
 |             |
 |             |__ For each letter
 |             |   in the alphabet list, 
 |             |   do the following:
 |             |       |
 |             |       |__ Print the letter.
 |             |       |
 |             |       |__ Do not include                   
 |             |           a new line character
 |             |           after printing
 |             |           the letter.
 |             |
 |__ Print a new line character
 |   to create a new line.
 |
End
```

```
     +-------+
     | Input |
     +-------+
         |
         V
+-----------------+
| define variable |
| alphabet letters|
+-----------------+ 
         |
         V
+-----------------+
| Loop through    |<---+
| alphabet letters|    |
+-----------------+    |
         |             |
         V             |
   +-----------+       |
   | Print     |       |
   | letter    |       |
   +-----------+       |
         |             |
         V             |
+-----------------+    |
| Check if        |    |
| there are       |    |
| more letters    |    |
| in the alphabet |----+
+-----------------+
         |
         V
   +------------+
   | End loop   |
   | if no more |
   | letters    |
   +------------+
         |
         V
     +-------+
     | Print |
     | new   |
     | line  |
     +-------+
         |
         V
    +--------+
    | Output |
    +--------+
```
