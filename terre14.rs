// Determines whether a list of integers
// (passed as command line arguments
// when the script is executed) is sorted or not.
// Langage : Rust
// Exec. script in command line :
// a) Post exec. : 'mkdir tmp_rust && cd tmp_rust && cp ../terre14.rs ./main.rs && cargo init -q'
// b) Exec. & test it with diff. arguments in command line : 'cargo run -q 9 8 3'
// c) Clean : 'cd .. && rm -rf tmp_rust'

// Import the env module from the standard library
use std::env;

// Define the main function
fn main() {
    // Collect the command line arguments into a vector
    let args: Vec<String> = env::args().skip(1).collect();

    // Check if there are any command line arguments provided
    if args.is_empty() {
        println!("Please provide a list of integers as command line arguments.");
        return;
    }

    // Create a vector to store the parsed integers
    let mut nums = Vec::new();

    // Iterate through each argument and parse it as an integer
    for arg in args {
        match arg.parse::<i32>() {
            // If parsing succeeds, add the integer to the vector
            Ok(num) => nums.push(num),
            // If parsing fails, print an error message and exit the program
            Err(_) => {
                println!("Invalid input: {}", arg);
                return;
            }
        }
    }

    // Check if the vector of integers is sorted
    let is_sorted = nums.windows(2).all(|w| w[0] <= w[1]);

    // Print a message indicating whether the list is sorted or not
    if is_sorted {
        println!("The list is sorted.");
    } else {
        println!("The list is not sorted.");
    }
}
