##### Specs :

> Create a program that transforms a time displayed in 24h format
> into a time displayed in 12h format, including handling noon and midnight.
> 
> The program should take a time string as input from the command line argument
> in the format "HH:mm", and output the time in 12h format as "hh:mm AM/PM".
>
> The program should exit with an error if no command line argument is provided
> or if the time string is invalid.
>
> Language: Swift
>
> Exec Command in Shell: swift terre11.swift 23:40


##### Expected result :

```zsh
$ swift terre11.swift 23:40
Input time string: 23:40
12-hour format: 11:40PM

$ 
```

##### Steps :

1.  Check that a command line argument was provided,
    and exit with an error if not.
2.  Retrieve the time string from the command line argument.
3.  Create a date formatter to parse the time string.
4.  Attempt to parse the time string into a Date object,
    and exit with an error if it is invalid.
5.  Extract the hour and minute components from the date object.
6.  Convert the hour component to 12h format,
    including handling noon and midnight.
7.  Determine whether the time is in AM or PM.
8.  Format the time in 12h format and print it to the console.

##### Pseudo-code :

```
BEGIN
    // Check that a command line argument was provided
    IF CommandLine.arguments.count != 2 THEN
        OUTPUT "Usage: swift time.swift [time in 24h format]"
        EXIT with error
    END IF

    // Retrieve the time string from the command line argument
    timeString ← CommandLine.arguments[1]

    // Create a date formatter to parse the time string
    dateFormatter ← create DateFormatter object
    dateFormatter.dateFormat ← "HH:mm"

    // Attempt to parse the time string into a Date object
    time ← parse timeString using dateFormatter
    IF time is nil THEN
        OUTPUT "Error: Invalid time format. Please enter a time in 24h format (e.g. '23:40')."
        EXIT with error
    END IF

    // Extract the hour and minute components from the date object
    timeComponents ← extract hour and minute components from time using Calendar object
    IF hour or minute is nil THEN
        OUTPUT "Error: Unable to extract hour and minute components from time."
        EXIT with error
    END IF

    // Convert the hour component to 12h format
    displayHours ← hour % 12
    IF displayHours = 0 THEN
        displayHours ← 12
    END IF

    // Determine whether the time is in AM or PM
    IF hour >= 12 THEN
        ampm ← "PM"
    ELSE
        ampm ← "AM"
    END IF

    // Format the time in 12h format and print it to the console
    displayTime ← format displayHours, minute, and ampm as a string
    OUTPUT "Input time string: " + timeString
    OUTPUT "12-hour format: " + displayTime
END
```

##### Diagrams :

```
Start
 |
 |__ Check that a command line argument was provided
 |      |
 |      |__ If no argument was provided, print usage message
 |      |   and exit with error code
 |      |
 |      |__ Retrieve the time string from the command line argument
 |      |
 |      |__ Create a date formatter to parse the time string
 |      |
 |      |__ Attempt to parse the time string into a Date object
 |      |   |
 |      |   |__ If the time string is invalid, print error message
 |      |       and exit with error code
 |      |
 |__ Extract the hour and minute components from the date object
 |      |
 |      |__ If unable to extract hour and minute components, 
 |          print error message and exit with error code
 | 
 |__ Convert the hour component to 12h format
 |      |
 |      |__ If the hour is 0, set the display hour to 12
 | 
 |__ Determine whether the time is in AM or PM
 | 
 |__ Format the time in 12h format and print it to the console
 |
End
```

```
     +-------+
     | Input |
     +-------+
         |
         V
+--------------------+
| Check command line |
| argument           |
+--------------------+
         |
         V
+----------------------+
| Retrieve time string |
| from argument        |
+----------------------+
         |
         V
+-----------------------+
| Create date formatter |
| to parse time string  |
+-----------------------+
         |
         V
+------------------------------+
| Attempt to parse time string |
| into a Date object           |
+------------------------------+
         |
         V
+------------------------------------+
| Extract hour and minute components |
| from the Date object               |
+------------------------------------+
         |
         V
+--------------------------------------+
| Convert the hour component to 12h    |
| format and determine AM or PM status |
+--------------------------------------+
         |
         V
+--------------------+
| Format time string |
| in 12h format and  |
| print to console   |
+--------------------+
         |
         V
    +--------+
    | Output |
    +--------+
```
