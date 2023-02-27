# Create a program that displays the alphabet in lowercase letters followed by a line break.
# Langage : Python v3
# Exec Command in Shell : python3 terre00.py

import string
alphabet = list(string.ascii_lowercase)
for letter in alphabet :
    print(letter, end="")
print("\n")
