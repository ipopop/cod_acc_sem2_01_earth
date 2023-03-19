// Program that takes three integers as parameters
// and displays the middle value and the middle value found by lol function.
// Langage : Dart
// Exec Command in Shell : 'dart terre13.dart 5 1 10'

// Main function
void main(List<String> arguments) {
  // Check if the correct number of arguments were provided
  if (arguments.length != 3) {
    print("Please provide three integers as command line arguments.");
    return;
  }

  try {
    // Parse command line arguments and convert them to integers
    var a = int.parse(arguments[0]);
    var b = int.parse(arguments[1]);
    var c = int.parse(arguments[2]);

    // Call the getMiddleValue function with three integer parameters and store the result in a variable
    var middleValue = getMiddleValue(a, b, c);
    // Print the middle value using string interpolation
    print("The middle value is: $middleValue");

    // Call the lol function to find the middle value and store the result in a variable
    var lolMiddleValue = lol([a, b, c]);
    // Print the middle value found by lol using string interpolation
    print("Or, if you prefer, the middle value is maybee? : $lolMiddleValue 😁");

  } catch (e) {
    // If an error occurred while parsing the arguments, print a user-friendly error message
    print("Please provide three integers as command line arguments.");
  }
}

// Function that returns the middle value of three integers
int getMiddleValue(int a, int b, int c) {
  // If a is between b and c, or c is between a and b, then a is the middle value
  if ((a >= b && a <= c) || (a >= c && a <= b)) {
    return a;
  // If b is between a and c, or c is between b and a, then b is the middle value
  } else if ((b >= a && b <= c) || (b >= c && b <= a)) {
    return b;
  // Otherwise, c is the middle value
  } else {
    return c;
  }
}

// Function that returns the middle value of a 3 elem. list
int lol(List<int> list) {
  // Return the middle value
  return list[1];
}
