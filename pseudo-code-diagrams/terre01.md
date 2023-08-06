##### Specs :

> Create a program that displays its file name.
>
> Language: JavaScript
>
> Exec Command in Shell: node terre01.js

##### Expected result :

```sh
$ node terre01.js
terre01.js
$ 
```

##### Steps:

1.    Use the __filename variable to get the full path of the current file.
2.    Use a regular expression to extract the file name from the full path.
3.    Print the file name to the console.

##### Pseudo-code :

```
Algorithm GetAndPrintFileName
Variables
    fullpath ← GetFullPath() : STRING
    filename ← "" : STRING

Begin
    fullpath ← GetCurrentFilePath()

    filename ← ExtractFileName(fullpath)

    PrintToConsole(filename)
End
```

##### Diagrams :

```
Start
 |
 |__ Use the `__filename` variable to get the full path of the current file.
 |      |
 |      |__ Use a regular expression to extract the file name from the full path.
 |      |
 |      |__ Print the file name to the console.
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
| Get the full    |
| path of current |
| file using      |
| __filename      |
+-----------------+
        |
        V
+---------------------------+
| Use regex to extract file |
| name from full path       |
+---------------------------+
        |
        V
+----------------------------+
| Print file name to console |
+----------------------------+
        |
        V
    +--------+
    | Output |
    +--------+
```
