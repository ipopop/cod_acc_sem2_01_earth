##### Specs :

> Create a C# program that calculates the result of a power,
>
> given a base number and an exponent.
>
> The exponent cannot be negative.
>
> The program should manage potential argument errors
>
> and display the result.

##### Expected result :

```
$ csc Terre08.cs && mono Terre08.exe
Enter the base number: 2
Enter the exponent: 4
2 raised to the power of 4 is 16
$
```

##### Steps :

1.  Prompt the user to enter the base number.
2.  Read the base number from the user input and convert it to an integer.
3.  Prompt the user to enter the exponent.
4.  Read the exponent from the user input and convert it to an integer.
5.  Check if the exponent is negative. If it is, print an error message and exit the program.
6.  If the exponent is not negative, calculate the power using a loop.
7.  Display the result.

##### Pseudo-code :

```
BEGIN
    // Prompt user to enter the base number
    OUTPUT "Enter the base number: "

    // Read the base number from user input and convert it to an integer
    INPUT baseNum

    // Prompt user to enter the exponent
    OUTPUT "Enter the exponent: "

    // Read the exponent from user input and convert it to an integer
    INPUT exponent

    // Check if exponent is negative
    IF exponent < 0 THEN
        OUTPUT "Exponent cannot be negative."
        RETURN
    END IF

    // Calculate power using a loop
    result ← 1
    FOR i FROM 1 TO exponent DO
        result ← result * baseNum
    END FOR

    // Display the result
    OUTPUT baseNum + " raised to the power of " + exponent + " is " + result
END
```

##### Diagrams :

```
Start
 |
 |__ Prompt user to enter the base number
 |      |
 |      |__ Read the base number from user input
 |             |
 |             |__ Prompt user to enter the exponent
 |                   |
 |                   |__ Read the exponent from user input
 |                          |
 |                          |__ Check if exponent is negative
 |                                |
 |                                |__ If exponent is negative,
 |                                |   print an error message and
 |                                |   exit the program.
 |                                |
 |                                |__ If exponent is not negative,
 |                                    calculate the power using a loop.
 |                                    |
 |                                    |__ Display the result.
 |
End
```

```
+-----------------------+
|    Start of Program   |
+-----------------------+
           |
           |    
+------------------------+
| Prompt for base number |
+------------------------+
           |
           |
+------------------+
| Read base number |
| from user input  |
+------------------+
           |
           |
+---------------------+
| Prompt for exponent |
+---------------------+
           |
           |
+-----------------+
| Read exponent   |
| from user input |
+-----------------+
           |
           |
+-------------------+
| Check exponent is |
| non-negative      |
+-------------------+
           |
           |
+-------------------------+
| If exponent is negative |
|   Display error message |
|   End program           |
+-------------------------+
           |
           |
+-----------------------------+
| Calculate result using loop |
+-----------------------------+
           |
           |
+-----------------------+
|    Display result     |
+-----------------------+
           |
           |
+-----------------------+
|    End of Program     |
+-----------------------+
```
