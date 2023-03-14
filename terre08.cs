// Display the result of a power.
// The exponent cannot be negative.
// Caution: manage potential argument errors.
// Langage : C#
// Exec Command in Shell : csc Terre08.cs && mono Terre08.exe

using System;

class Program {
    static void Main(string[] args) {
        int baseNum, exponent, result;

        // Prompt user to enter the base number
        Console.Write("Enter the base number: ");

        // Read the base number from user input and convert it to an integer
        baseNum = int.Parse(Console.ReadLine());

        // Prompt user to enter the exponent
        Console.Write("Enter the exponent: ");

        // Read the exponent from user input and convert it to an integer
        exponent = int.Parse(Console.ReadLine());

        // Check if exponent is negative
        if (exponent < 0) {
            Console.WriteLine("Exponent cannot be negative.");

            // Exit the program if exponent is negative
            return;
        }

        // Calculate power using a loop
        result = 1;
        for (int i = 1; i <= exponent; i++) {
            result *= baseNum;
        }

        // Display the result
        Console.WriteLine($"{baseNum} raised to the power of {exponent} is {result}");
    }
}
