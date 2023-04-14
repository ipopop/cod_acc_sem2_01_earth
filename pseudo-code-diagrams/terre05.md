##### Specs :

> Display the result and the remainder of a division between two numbers.
>
> Language: Java
>
> Exec Command in Shell: java terre05.java 42 17

##### Expected result :

```
$ java terre05 42 17
The quotient is 2
The remainder is 8
```

##### Steps :

Parse the first command line argument as the dividend,
and the second command line argument as the divisor.

Compute the quotient and remainder of the division
between the dividend and the divisor
using the division and modulo operators.

Print the quotient and remainder to the console.

##### Pseudo-code :

```
BEGIN
    // Parse command line arguments as integers
    dividend ← parse_integer(args[0])
    divisor ← parse_integer(args[1])

    // Compute quotient and remainder
    quotient ← dividend / divisor
    remainder ← dividend % divisor

    // Print the results
    OUTPUT "The quotient is " + quotient
    OUTPUT "The remainder is " + remainder
END
```

##### Diagrams :

```
Start
 |
 |__ Read the values of dividend and divisor from command line arguments
 |      |
 |      |__ Calculate the quotient by dividing dividend by divisor
 |      |
 |      |__ Calculate the remainder of dividend divided by divisor
 |      |
 |      |__ Display the quotient
 |      |
 |      |__ Display the remainder
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
| Parse arguments |
| as integers     |
+-----------------+
     |
     V
+------------------+
| Compute quotient |
| and remainder    |
+------------------+
     |
     V
+------------------+
| Print the result |
+------------------+
     |
     V
 +--------+
 | Output |
 +--------+
```
