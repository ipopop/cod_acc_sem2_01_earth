# Time displayed in 12h format conversion to a time displayed in 24h format.
# Caution : noon and midnight.
# Language : R
# Usage : Rscript terre12.r HH:MM[AM/PM], eg 2:30PM

# Get the time argument from the command line
timeInput <- commandArgs(trailingOnly = TRUE)[1]
cat("Time in 12-hours format received:", timeInput, "\n")

# Extract the hours and minutes from the input string
hours <- as.integer(substr(timeInput, 1, regexpr(":", timeInput) - 1))
mins <- as.integer(substr(timeInput, regexpr(":", timeInput) + 1, nchar(timeInput) - 2))

# Modify hours according to AM or PM
if (endsWith(timeInput, "PM") & hours != 12) {
    hours <- hours + 12
} else if (endsWith(timeInput, "AM") & hours == 12) {
    hours <- hours - 12
} else if (!endsWith(timeInput, "AM") & !endsWith(timeInput, "PM")) {
    stop("Invalid input! The expected format is HH:MM[AM/PM].")
}

# Convert to 24h format
timeOutput <- sprintf("%02d:%02d", hours, mins)

# Print the result
cat("Time in 24-hour format:", timeOutput, "\n")
