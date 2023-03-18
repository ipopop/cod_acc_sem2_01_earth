import string
import unittest
from alphabet import print_alphabet

class AlphabetTest(unittest.TestCase):
    # Test if the alphabet is correctly printed
    def test_print_alphabet(self):
        # Set the expected output
        expected_output = string.ascii_lowercase + '\n'

        # Call the function and capture its output
        output = print_alphabet()

        # Assert that the output is correct
        self.assertEqual(output, expected_output)

if __name__ == '__main__':
    unittest.main()
