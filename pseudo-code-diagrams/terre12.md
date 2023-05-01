##### Specs :

> Create a program that converts time displayed in 12-hour format to time displayed in 24-hour format.
> 
> The input time will be provided as a command line argument in the format of HH:MM[AM/PM].
>
> The program should output the converted time in the format of HH:MM.

##### Expected result :

```
$ Rscript terre12.r 2:30PM
Time in 12-hours format received: 2:30PM 
Time in 24-hour format: 14:30

$ 
```

##### Steps :

1.  Get the time argument from the command line using commandArgs.
2.  Extract the hours and minutes from the time argument using substr and regexpr.
3.  Modify the hours according to AM or PM using endsWith.
4.  Convert the time to 24-hour format using sprintf.
5.  Print the result using cat.

##### Pseudo-code :

```
BEGIN
    // Get the time argument from the command line
    timeInput ← commandArgs(trailingOnly = TRUE)[1]
    OUTPUT "Time in 12-hours format received:", timeInput

    // Extract the hours and minutes from the input string
    hours ← as.integer(substr(timeInput, 1, regexpr(":", timeInput) - 1))
    mins ← as.integer(substr(timeInput, regexpr(":", timeInput) + 1, nchar(timeInput) - 2))

    // Modify hours according to AM or PM
    IF endsWith(timeInput, "PM") AND hours != 12 THEN
        hours ← hours + 12
    ELSE IF endsWith(timeInput, "AM") AND hours == 12 THEN
        hours ← hours - 12
    ELSE IF !endsWith(timeInput, "AM") AND !endsWith(timeInput, "PM") THEN
        stop("Invalid input! The expected format is HH:MM[AM/PM].")
    END IF

    // Convert to 24h format
    timeOutput ← sprintf("%02d:%02d", hours, mins)

    // Print the result
    OUTPUT "Time in 24-hour format:", timeOutput
END
```

##### Diagrams :

```
Start
 |
 |__ Get the time argument from the command line using `commandArgs`.
 |      |
 |      |__ Extract the hours and minutes from the time argument
 |      |   using `substr` and `regexpr`.
 |      |
 |      |__ Modify the hours according to AM or PM
 |      |   using `endsWith`.
 |      |
 |      |__ Convert the time to 24-hour format
 |      |   using `sprintf`.
 |      |
 |__ Print the result using `cat`.
 |
End
```

```
     +-------+
     | Input |
     +-------+
         |
         V
+-----------------------+
| Get the time argument |
| from the command line |
+-----------------------+
         |
         V
+-----------------------+
| Extract hours and     |
| minutes from the time |
| argument              |
+-----------------------+
         |
         V
+------------------------+
| Modify hours according |
| to AM or PM            |
+------------------------+
         |
         V
+---------------------+
| Convert the time to |
| 24-hour format      |
+---------------------+
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
