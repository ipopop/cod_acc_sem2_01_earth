// Checks whether a number is prime or not.
// 0 and 1 are not prime numbers.
// Handle argument errors.
// Langage : Kotlin
// Exec Command in Shell :
// 'kotlinc terre10.kt -include-runtime -d terre10.jar' && 'java -jar terre10.jar 5'

fun main(args: Array<String>) {
    // Get the first argument as an integer, or null if it's not a valid integer
    val num = args.firstOrNull()?.toIntOrNull()

    // Check for argument errors
    when {
        args.size != 1 -> println("Error: Please provide exactly one argument.")
        num == null -> println("Error: Invalid argument. Please provide a number.")
        num <= 1 -> println("Warning: $num is not a prime number.")
        // Check whether num is divisible by any number from 2 to num / 2
        (2..num / 2).none { num % it == 0 } -> println("Yes, $num is a prime number.")
        else -> println("No, $num is not a prime number.")
    }
}
