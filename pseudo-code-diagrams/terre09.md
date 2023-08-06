##### Specs :

> Create a function in Julia
> that takes a positive integer
> as an argument
> and returns the square root of the integer.
>
> If the input is not a positive integer,
> the function should throw an error
> with an appropriate error message.

##### Expected result :

```
$ julia> include("terre09.jl")
sqrt_positive_int (generic function with 1 method)

julia> sqrt_positive_int(4)
2.0

julia> sqrt_positive_int(-4)
ERROR: Input must be a positive integer
Stacktrace:
 [1] error(::String) at ./error.jl:33
 [2] sqrt_positive_int(::Int64) at ./terre09.jl:4
 [3] top-level scope at REPL[2]:1

$
```

##### Steps :

1.  Define a function named sqrt_positive_int
    that takes a single argument of type Int.
2.  Check if the argument is less than zero.
3.  If the argument is less than zero, throw an error
    with the message "Input must be a positive integer".
4.  If the argument is greater than or equal to zero,
    calculate the square root of the argument
    using the sqrt function and return the result.

##### Pseudo-code :

```
BEGIN
    FUNCTION sqrt_positive_int(n::INT)::FLOAT64
        IF n < 0 THEN
            RAISE an error with message "Input must be a positive integer"
        ELSE
            RETURN the square root of n
        END IF
    END FUNCTION
END
```

##### Diagrams :

```
Start
 |
 |__ Define function sqrt_positive_int(n::Int)
 |      |
 |      |__ If n < 0, then
 |      |      |
 |      |      |__ Throw an error "Input must be a positive integer"
 |      |
 |      |__ Else, return the square root of n
 |             |
 |             |__ End if statement
 |             
 |__ End function definition
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
| define function   |
| sqrt_positive_int |
+-------------------+
       |
       V
+------------------+
| Check if arg < 0 |
| Throw error if   |
| arg < 0          |
+------------------+
       |
       V
+------------------+
| Calculate square |
| root if arg >= 0 |
+------------------+
       |
       V
   +--------+
   | Output |
   +--------+
```
