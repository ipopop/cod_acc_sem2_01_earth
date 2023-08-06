##### Specs :

> Create a program that checks whether a number is prime or not.
>
> 0 and 1 are not prime numbers.
>
> Handle argument errors.
>
> Language: Kotlin
>
> Execution command in Shell:
> 'kotlinc terre10.kt -include-runtime -d terre10.jar' && 'java -jar terre10.jar 5'


##### Expected result :

```
$ kotlinc terre10.kt -include-runtime -d terre10.jar && java -jar terre10.jar 5
```
If the input number is prime:
```
Yes, 5 is a prime number.
```

If the input number is not prime:
```
No, 6 is not a prime number.

```

If the input is not a valid integer or more than one argument is provided (ex. arg. : 'hello'):
```
Error: Invalid argument. Please provide a number.
```
or (ex. arg. : '10 20') :
```
Error: Please provide exactly one argument.
```

If the input is 0 or 1 :
```
Warning: 0 is not a prime number.
```
or :
```
Warning: 1 is not a prime number.
```


##### Steps :

1.  Get the first command-line argument as a string.
2.  Try to convert the argument to an integer using toIntOrNull(). Store the result in the num variable.
3.  Check for argument errors:
        If there are more or less than one argument, print an error message.
        If the argument cannot be converted to an integer, print an error message.
        If the integer is less than or equal to 1, print a warning message.
4.  If there are no argument errors, check whether the number is prime:
        If the number is divisible by any number from 2 to num/2, print a message indicating that the number is not prime.
5.  Otherwise, print a message indicating that the number is prime.

##### Pseudo-code :

```
BEGIN
    // Get the first command-line argument as a string
    argument : STRING ← args[0]

    // Try to convert the argument to an integer
    num : INT? ← argument.toIntOrNull()

    // Check for argument errors
    IF args.size ≠ 1 THEN
        PRINT "Error: Please provide exactly one argument."
    ELSE IF num = null THEN
        PRINT "Error: Invalid argument. Please provide a number."
    ELSE IF num ≤ 1 THEN
        PRINT "Warning: " + num + " is not a prime number."
    ELSE
        // Check whether the number is prime
        IF (2..num / 2).none { num % it == 0 } THEN
            PRINT "Yes, " + num + " is a prime number."
        ELSE
            PRINT "No, " + num + " is not a prime number."
        END IF
    END IF
END

```

##### Diagrams :

```
Start
 |
 |__ Get the first argument as an integer
 |      |
 |      |__ Check for argument errors
 |      |      |
 |      |      |__ If args size is not 1
 |      |      |      |
 |      |      |      |__ Print "Error: Please provide exactly one argument."
 |      |      |
 |      |      |__ If num is null
 |      |      |      |
 |      |      |      |__ Print "Error: Invalid argument. Please provide a number."
 |      |      |
 |      |      |__ If num is less than or equal to 1
 |      |      |      |
 |      |      |      |__ Print "Warning: $num is not a prime number."
 |      |      |
 |      |      |__ If num is greater than 1 and not divisible by any number from 2 to num / 2
 |      |      |      |
 |      |      |      |__ Print "Yes, $num is a prime number."
 |      |      |
 |      |      |__ If num is not a prime number
 |      |      |      |
 |      |      |      |__ Print "No, $num is not a prime number."
 |      |      |
 |      |__ End of argument checks
 |
End

```

```
     +-------+
     | Input |
     +-------+
         |
         V
  +---------------+
  | Get first arg |
  +---------------+
         |
         V
+-----------------+
| Check for       |
| argument errors |
+-----------------+
         |
         V
  +--------------+
  | Is args size |
  |     != 1?    |
  +--------------+
     |         |
     v         v
  +----+    +-----+
  | NO |    | Yes |
  +----+    +-----+
     |         |
     |         v
     |   +----------------+
     |   | Print "Error:  |
     |   | Please provide |
     |   | exactly one    |
     |   | argument."     |
     |   +----------------+
     |
+-----------------+
|  Is num null?   |
+-----------------+
     |           |
     |           v
  +----+      +-----+
  | NO |      | Yes |
  +----+      +-----+
     |           |
     |           v
     |  +-----------------+
     |  | Print "Error:   |
     |  | Invalid         |
     |  | argument.       |
     |  | Please provide  |
     |  | a number."      |
     |  +-----------------+ 
     V
 +-----------------+
 |  Is num <= 1?   |
 +-----------------+
     |          |
     v          v
  +----+     +-----+
  | NO |     | Yes |
  +----+     +-----+
     |          |
     |          v
     |      +-----------------+
     |      | Print "Warning: |
     |      | $num is not a   |
     |      | prime number."  |
     |      +-----------------+
     v
  +----------------+
  | Is num a prime |
  | number?        |
  +----------------+
     |          |
     v          v
  +----+     +-----+
  | NO |     | Yes |
  +----+     +-----+
     |          |
     |          v
     |   +---------------------+
     |   | Print "Yes, $num    |
     |   | is a prime number." |
     |   +---------------------+
     v
+-----------------+
| Print "No, $num |
| is not a prime  |
| number."        |
+-----------------+
         |
         V
    +--------+
    | Output |
    +--------+
```
