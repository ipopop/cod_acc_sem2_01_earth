##### Specs :

> Invert the string given as argument (caution: manage potential argument errors).
> 
> Langage : Golang
>
> Exec Command in Shell : go run terre06.go "somórd / ςομόρδ te niláp / νιλάπ cerg ud ,emordnilap eL"

##### Expected result :
```
$ go run terre06.go "somórd / ςομόρδ te niláp / νιλάπ cerg ud ,emordnilap eL"
Le palindrome du grec πάλιν  pálin et δρόμος  drómos
$
```

##### Steps :
1. Import the necessary packages: "fmt", "os", and "regexp".
2. Create a regular expression to match
   any non-alphanumeric characters in the input string.
3. Create a function called clearString
   to remove any non-alphanumeric characters
   from the input string using the regular expression.
4. Create a function called reverseString to invert the input string.
5. In the main function, iterate through
   the arguments provided using the os.Args slice.
6. For each argument, except the first
   (which is the name of the program itself),
   call the clearString function
   to remove any non-alphanumeric characters.
7. Call the reverseString function to invert the cleaned string.
8. Print the inverted string to the console.


##### Pseudo-code :

```
BEGIN
    // Import the necessary packages
    IMPORT "fmt"
    IMPORT "os"
    IMPORT "regexp"

    // Create a regular expression to match any
    // non-alphanumeric characters in the input string
    nonAlphanumericRegex ← regexp.MustCompile(`[^\p{L}\p{N} ]+`)

    // Define a function called "clearString"
    // to remove any non-alphanumeric characters
    // from the input string using the regular expression
    FUNCTION clearString(inputString : STRING) DO
        RETURN nonAlphanumericRegex.ReplaceAllString(inputString, "")
    END FUNCTION

    // Define a function called "reverseString" to invert the input string
    FUNCTION reverseString(inputString : STRING) DO
        reversedString : STRING ← ""
        FOR EACH character IN inputString DO
            reversedString ← character + reversedString
        END FOR
        RETURN reversedString
    END FUNCTION

    // In the main function, iterate through
    // the arguments provided using the "os.Args" slice
    FOR i, arg IN os.Args DO
        IF i > 0 THEN
            // Call the "clearString" function
            // to remove any non-alphanumeric characters
            cleanedString : STRING ← clearString(arg)

            // Call the "reverseString" function
            // to invert the cleaned string
            invertedString : STRING ← reverseString(cleanedString)

            // Print the inverted string to the console
            fmt.Println(invertedString)
        END IF
    END FOR
END
```

##### Diagrams :

```
Start
 |
 |__ Import necessary modules
 | 
 |__ Define a regular expression
 |   to match non-alphanumeric characters
 |
 |__ Define a function to remove
 |   non-alphanumeric characters from the input string
 |
 |__ Define a function to reverse the input string
 |      
 |__ For each argument in the command-line arguments, do the following:
 |      |
 |      |__ Remove non-alphanumeric characters
 |      |   from the argument using the clearString function
 |      |
 |      |__ Reverse the argument using the reverseString function
 |      |
 |      |__ Print the reversed argument
 |
End
```

```
     +-------+
     | Input |
     +-------+
         |
         V
+------------------+
| Import modules   |
| and define regex |
+------------------+ 
         |
         V
+------------------+
| Define function  |
| to remove        |
| non-alphanumeric |
| characters       |
+------------------+
         |          
         V          
+-----------------+ 
| Define function |
| to reverse      |
| the input       |
| string          |
+-----------------+
         |         
         V          
+------------------+
| For each command |<--+
| line argument    |   |
+------------------+   |
         |             |
         V             |
   +------------+      |
   | Remove     |      |
   | non-alpha- |      |
   | numeric    |      |
   | characters |      |
   +------------+      |
         |             |
         V             |
   +-----------+       |
   | Reverse   |       |
   | the input |       |
   | string    |       |
   +-----------+       |
         |             |
         V             |
   +-----------+       |
   | Print the |       |
   | reversed  |       |
   | argument  |       |
   +-----------+       |
         |             |
         V             |
+-----------------+    |
| Check if        |    |
| there are       |    |
| more arguments  |----+
+-----------------+
         |
         V
   +------------+
   | End loop   |
   | if no more |
   | arguments  |
   +------------+
         |
         V
    +--------+
    | Output |
    +--------+
```
