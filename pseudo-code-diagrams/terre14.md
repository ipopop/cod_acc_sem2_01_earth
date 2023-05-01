##### Specs :

> Determines whether a list of integers
> (passed as command line arguments
> when the script is executed)
> is sorted or not.
>
> Langage : Rust


Exec. script in command line :
  - a) Post exec. :
```
mkdir tmp_rust && cd tmp_rust && cp ../terre14.rs ./main.rs && cargo init -q
```

  - b) Exec. & test it with diff. arguments in command line :
```
cargo run -q 9 8 3
```

  - c) Clean :
```
cd .. && rm -rf tmp_rust
```

##### Expected result :

```
$  cargo run -q 1 2 3 4
The list is sorted.

$
```
```
$ cargo run -q 5 2 1
The list is not sorted.

$
```

##### Steps :

1.  Import the env module from the standard library.
2.  Collect the command line arguments into a vector using the env::args function and skip the first argument, which is the name of the executable.
3.  Check if any command line arguments are provided. If there are none, print an error message and return from the program.
4.  Create an empty vector to store the parsed integers.
5.  Iterate through each argument in the vector of command line arguments, and parse it as an integer using the parse method of the str type.
6.  If the parsing succeeds, add the integer to the nums vector. If parsing fails, print an error message and return from the program.
7.  Use the windows method of the Vec type to create an iterator over pairs of adjacent elements in the nums vector.
8.  Use the all method of the iterator to check if each pair of adjacent elements is in ascending order.
9.  Print a message indicating whether the list is sorted or not.

##### Pseudo-code :

```
BEGIN
    // Collect the command line arguments into a vector
    args ← env::args().skip(1).collect()

    // Check if there are any command line arguments provided
    IF args.is_empty() THEN
        PRINT "Please provide a list of integers as command line arguments."
        RETURN
    END IF

    // Create a vector to store the parsed integers
    nums ← []

    // Iterate through each argument and parse it as an integer
    FOR arg IN args DO
        // If parsing succeeds, add the integer to the vector
        // If parsing fails, print an error message and exit the program
        IF let Ok(num) = arg.parse::<i32>() THEN
            nums.push(num)
        ELSE
            PRINT "Invalid input: ", arg
            RETURN
        END IF
    END FOR

    // Check if the vector of integers is sorted
    is_sorted ← nums.windows(2).all(|w| w[0] <= w[1])

    // Print a message indicating whether the list is sorted or not
    IF is_sorted THEN
        PRINT "The list is sorted."
    ELSE
        PRINT "The list is not sorted."
    END IF
END
```

##### Diagrams :

```
Start
 |
 |__ Import env module from the standard library
 |      |
 |      |__ Collect command line arguments into a vector
 |      |
 |      |__ Check if there are any command line arguments provided
 |             |
 |             |__ Create a vector to store the parsed integers
 |             |
 |             |__ Iterate through each argument and parse it as an integer
 |                    |
 |                    |__ If parsing succeeds, add the integer to the vector
 |                    |
 |                    |__ If parsing fails, print an error message and exit the program
 | 
 |__ Check if the vector of integers is sorted
 | 
 |__ Print a message indicating whether the list is sorted or not
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
| Import env module |
| from std. lib.    |
+-------------------+ 
         |
         V
+------------------+
| Collect cmd line |<--+
| arguments into a |   |
| vector           |   |
+------------------+   |
         |             |
         V             |
 +---------------+     |
 | Check if      |     |
 | there are     |     |
 | any arguments |     |
 | provided      |-----+
 +---------------+
         |
         V
+-----------------+
| Create vector   |
| to store parsed |
| integers        |
+-----------------+
         |
         V
+-----------------+
| Iterate through |
| each argument   |
| and parse as an |
| integer         |
+-----------------+
         |
         V
   +-------------+
   | If parsing  |
   | succeeds,   |
   | add integer |
   | to vector   |
   +-------------+
         |
         V
   +------------+
   | If parsing |
   | fails,     |
   | print an   |
   | error msg  |
   +------------+
         |
         V
+-----------------+
| Check if vector |
| of integers is  |
| sorted          |
+-----------------+
         |
         V
+----------------+
| Print message  |
| indicating if  |
| list is sorted |
+----------------+
         |
         V
    +--------+
    | Output |
    +--------+
```
