##### Specs :

> Displays the number of characters
>
> in a string passed as an argument.
>
> Langage : Typescript
>
> Exec Command in Shell :
> npx ts-node terre07.ts "test-argument-007"

##### Expected result :

```
$ npx ts-node terre07.ts "test-argument-007"
Argument : 'test-argument-007' / Number of Characters : 17
```

##### Steps :

1. Check if there is at least
   one argument passed to the program.
2. Get the first argument passed to the program.
3. Print the argument passed
   and the number of characters in the argument.

##### Pseudo-code :

```
BEGIN
    // Check if there is at least
    // one argument passed to the program.
    IF length of process.argv is less than 3 THEN
        PRINT "Expected at least one string argument!"
        EXIT program with error
    END IF
    
    // Get the first argument passed to the program.
    myArgs ← process.argv[2]
    
    // Print the argument passed
    // and the number of characters in the argument.
    PRINT "Argument : '" + myArgs + "' / Number of Characters : " + myArgs.length
END
```

##### Diagrams :

```
Start
 |
 |__ Check if there is at least
 |   one argument passed to the program.
 |      |
 |      |__ IF length of process.argv is less than 3 THEN
 |      |      |
 |      |      |__ PRINT "Expected at least one string argument!"
 |      |      |
 |      |      |__ EXIT program with error
 |      |
 |      |__ END IF
 |
 |__ Get the first argument passed to the program.
 |      |
 |      |__ myArgs ← process.argv[2]
 |
 |__ Print the argument passed
 |   and the number of characters in the argument.
 |      |
 |      |__ PRINT "Argument : '" + myArgs + "' / Number of Characters : " + myArgs.length
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
| Check if at least |
| one argument was  |
| passed            |
+-------------------+ 
         |
         V
+------------------+
| Get the argument |
| passed           |
+------------------+ 
         |
         V
   +------------+
   | Count the  |
   | number of  |
   | characters |
   +------------+
         |
         V
     +--------+
     | Print  |
     | result |
     +--------+
         |
         V
    +--------+
    | Output |
    +--------+
```
