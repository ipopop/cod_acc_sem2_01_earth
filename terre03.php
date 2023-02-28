<?php

/*
Create a program that displays the alphabet
  from the given letter given in argument
  in lower case followed by a line break.
  Warning: your program must use a loop.
Langage : PHP
Exec Command in Shell : php terre03.php m
*/

$argument = $argv[1];
$alphabet = range('z', 'a');
    
if (preg_match('/[^a-zA-Z]+/', $argument)) {
  echo "'$argument' is not a valid argument (a to z only)";
  echo "\n";
} else {
  $lowerArg = strtolower($argument);
  echo $lowerArg[0];
  for ($i = count($alphabet) - 1; $i >= 0; $i--) {
    if ($alphabet[$i] > $lowerArg) {
      echo $alphabet[$i];
    } else {
    }
  }
  echo "\n";
}

?>
