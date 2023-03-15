// Transforms a time displayed in 24h format
// into a time displayed in 12h format.
// Caution: noon and midnight.
// Langage : Swift
// Exec Command in Shell :

import Foundation

// Check that a command line argument was provided
guard CommandLine.arguments.count == 2 else {
    print("Usage: swift time.swift [time in 24h format]")
    exit(1)
}

// Retrieve the time string from the command line argument
let timeString = CommandLine.arguments[1]

// Create a date formatter to parse the time string
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "HH:mm"

// Attempt to parse the time string into a Date object
guard let time = dateFormatter.date(from: timeString) else {
    print("Error: Invalid time format. Please enter a time in 24h format (e.g. '23:40').")
    exit(1)
}

// Extract the hour and minute components from the date object
let calendar = Calendar.current
let timeComponents = calendar.dateComponents([.hour, .minute], from: time)
guard let hour = timeComponents.hour, let minute = timeComponents.minute else {
    print("Error: Unable to extract hour and minute components from time.")
    exit(1)
}

// Convert the hour component to 12h format
var displayHours = hour % 12
if displayHours == 0 {
    displayHours = 12
}

// Determine whether the time is in AM or PM
let ampm = hour >= 12 ? "PM" : "AM"

// Format the time in 12h format and print it to the console
let displayTime = String(format: "%02d:%02d%@", displayHours, minute, ampm)
print("Input time string: \(timeString)")
// print("Time components: \(timeComponents)")
print("12-hour format: \(displayTime)")
