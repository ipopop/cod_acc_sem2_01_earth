##### Specs :

> Program that takes three integers as parameters
> and displays the middle value and the middle value found by 'lol' function.
>
> Langage : Dart
>
> Exec Command in Shell : 'dart terre13.dart 5 1 10'

##### Expected result :

```
$ dart terre13.dart 5 1 10
The middle value is: 5
Or, if you prefer, the middle value is maybee? : 1 😁

$ 
```

##### Steps :

1.  Define a main function that takes a list of strings as an argument.
2.  Check if the correct number of arguments were provided (i.e., three integers).
3.  Parse the three command line arguments and convert them to integers using int.parse.
4.  Call the getMiddleValue function with the three integer parameters and store the result in a variable.
5.  Print the middle value using string interpolation.
6.  Call the lol function to find the middle value and store the result in a variable.
7.  Print the middle value found by lol using string interpolation.
8.  Define the getMiddleValue function that returns the middle value of three integers.
9.  Use conditional statements to determine which integer is the middle value.
10. Define the lol function that returns the middle value of a 3-element list.

##### Pseudo-code :

```
BEGIN
    // Check if the correct number of arguments were provided
    IF number of arguments is not 3 THEN
        OUTPUT "Please provide three integers as command line arguments."
        RETURN
    END IF

    // Parse command line arguments and convert them to integers
    TRY
        a ← parse argument 1 as integer
        b ← parse argument 2 as integer
        c ← parse argument 3 as integer
    CATCH
        OUTPUT "Please provide three integers as command line arguments."
        RETURN
    END TRY

    // Call the getMiddleValue function with three integer parameters and store the result in a variable
    middleValue ← getMiddleValue(a, b, c)

    // Print the middle value using string interpolation
    OUTPUT "The middle value is: " + middleValue

    // Call the lol function to find the middle value and store the result in a variable
    lolMiddleValue ← lol([a, b, c])

    // Print the middle value found by lol using string interpolation
    OUTPUT "Or, if you prefer, the middle value is maybee? : " + lolMiddleValue + " 😁"
END

// Function that returns the middle value of three integers
FUNCTION getMiddleValue(a, b, c)
    // If a is between b and c, or c is between a and b, then a is the middle value
    IF (a >= b AND a <= c) OR (a >= c AND a <= b) THEN
        RETURN a
    // If b is between a and c, or c is between b and a, then b is the middle value
    ELSE IF (b >= a AND b <= c) OR (b >= c AND b <= a) THEN
        RETURN b
    // Otherwise, c is the middle value
    ELSE
        RETURN c
    END IF
END FUNCTION

// Function that returns the middle value of a 3 elem. list
FUNCTION lol(list)
    // Return the middle value
    RETURN list[1]
END FUNCTION
```

##### Diagrams :

```
Start
 |
 |__ Check if the correct number of arguments were provided
 |      |
 |      |__ If not, print an error message and return
 |      |
 |      |__ If yes, try to parse the arguments as integers
 |             |
 |             |__ If an error occurs, print an error message and return
 |             |
 |             |__ If no error occurs, call the getMiddleValue function with the three integers as parameters and store the result in a variable
 |             |
 |             |__ Call the lol function with the three integers as a list and store the result in a variable
 |             |
 |             |__ Print the two middle values using string interpolation
 |
End
```

```
     +-------+
     | Input |
     +-------+
         |
         V
+----------------------------+
| Check if correct number of |
| arguments were provided    |
+----------------------------+
         |
         V
    +---------+
    | Error   |
    | message |
    +---------+
         |
         V
   +----------+
   | Try to   |
   | parse    |
   | integers |
   +----------+
         |
         V
    +---------+
    | Error   |
    | message |
    +---------+
         |
         V
+----------------------+
| Call getMiddleValue  |
| and store the result |
| in a variable        |
+----------------------+
         |
         V
+-----------------------+
| Call lol function and |
| store the result in a |
| variable              |
+-----------------------+
         |
         V
    +---------+
    | Print   |
    | the two |
    | middle  |
    | values  |
    +---------+
         |
         V
    +--------+
    | Output |
    +--------+
```
