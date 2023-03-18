# Program that displays the alphabet
# in lowercase letters followed by a line break.
# Langage : Python v3
# Exec Command in Shell : python3 alphabet.py

import string

def print_alphabet():
    # Create a list to capture the output
    output = []

    # Iterate over the lowercase alphabet letters
    # and append them to the output list
    for letter in string.ascii_lowercase:
        output.append(letter)

    # Append a line break to the output list
    output.append('\n')

    # Return the output as a string
    result = ''.join(output)
    print(result)
    return result

print_alphabet()
