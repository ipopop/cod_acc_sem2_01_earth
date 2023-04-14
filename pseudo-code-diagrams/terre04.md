##### Specs :

Determine if the given argument is an even or odd integer,
including negative integers.

Langage : Shell

Exec Command in Shell : (chmod +x terre04.sh) ./terre04.sh 

##### Expected result :

```
$ chmod +x terre04.sh
$ ./terre04.sh
Enter a number: 8
8 is even
$ ./terre04.sh
Enter a number: -7
-7 is odd
$ ./terre04.sh
Enter a number: 3.14
3.14 is not an integer number
$
```

##### Steps:

Read in the user input using read.

Use a regular expression to check if the input is a valid integer.

If the input is not a valid integer, output an error message and exit the program.

Check if the input is even or odd.
  a. If the input is even, output a message indicating that it is even.
  b. If the input is odd, output a message indicating that it is odd.

##### Pseudo-code :

```
BEGIN
    // Read user input using read command
    read -rp "Enter a number: " number

    // Use regular expression to check if input is a valid integer
    if ! [[ "$number" =~ ^[-+]?[0-9] ]];
      then // If input is not a valid integer, output an error message and exit program
        echo "${number} is not an integer number";
        exit;
    fi

    // Check if input is even or odd
    if [ $((number%2)) -eq 0 ];
      then // If input is even, output a message indicating that it is even
        echo "$number is even";
      else // If input is odd, output a message indicating that it is odd
        echo "$number is odd";
    fi
END
```

##### Diagrams :

```
Start
 |
 |__ Read user input using read command
 |      |
 |      |__ Use regular expression to check if input is a valid integer
 |      |   |
 |      |   |__ If input is not a valid integer, 
 |      |       |   output an error message 
 |      |       |   and exit program
 |      |       |
 |      |   |__ If input is a valid integer,
 |      |       |   check if input is even or odd
 |      |       |
 |      |       |__ If input is even, output a message 
 |      |           indicating that it is even
 |      |       |
 |      |__ If input is odd, output a message 
 |           indicating that it is odd
 |
End
```

```
    +-------+
    | Input |
    +-------+
        |
        V
+----------------+
| Prompt user to |
| enter a number |
+----------------+
        |
        V
+-----------------+
| Check if number |
| is an integer   |
+-----------------+
        |
        V
+-----------------------------------+
| If not an integer, print an error |
| message and exit                  |
+-----------------------------------+
        |
        V
+-----------------+
| Check if number |
| is even or odd  |
+-----------------+
        |
        V
+-----------------+
| Print the result|
+-----------------+
        |
        V
   +---------+
   | Output  |
   +---------+
```
