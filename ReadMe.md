## Author : [Prateek Kumar Singh]() 20cs01003@iitbbs.ac.in 
[Compiler Design Lab Assignments]()
Q1_1

Regex to find consecutive letters
This code uses a regular expression to find all substrings of length 8 that consist of only consecutive letters a, b, or c.

How to use
To use this code, simply pass it a string as input. The code will then print out all of the valid substrings it finds.

For example, if you pass the code the string "abcabcabcabc", it will print out the following:

valid substring found

How it works
The code first defines a regular expression that matches substrings of length 8 that consist of only consecutive letters a, b, or c. This regular expression is:

[a-c]{8}

The [a-c] part of the regular expression matches any letter from a to c. The {8} part of the regular expression matches a string of 8 characters.

The code then uses the yylex() function to scan the input string for matches to the regular expression. If a match is found, the code prints out the substring.

Q1_2

Regex to check for valid binary strings
This code uses a regular expression to check if a string is a valid binary string. A valid binary string is a string that consists of only 0s and 1s, and the number of 0s and 1s must be even.

How to use
To use this code, simply pass it a string as input. The code will then print out whether the string is a valid binary string or not.

For example, if you pass the code the string "01010101", it will print out the following:

Valid binary string: 01010101

How it works
The code first defines a regular expression that matches valid binary strings. This regular expression is:

[0|1]{n}

The [0|1] part of the regular expression matches either a 0 or a 1. The {n} part of the regular expression matches a string of n characters.

The code then uses the yylex() function to scan the input string for matches to the regular expression. If a match is found, the code checks if the number of 0s and 1s in the string is even. If it is, the code prints out "Valid binary string". Otherwise, the code prints out "Invalid binary string".


Q1_3

Regex to find consecutive letters in C
This code uses a regular expression to find all substrings of length 8 that consist of only consecutive letters a, b, or c.

How to use
To use this code, simply pass it a string as input. The code will then print out all of the valid substrings it finds.

For example, if you pass the code the string "abcabcabcabc", it will print out the following:

valid substring found

How it works
The code first defines a regular expression that matches substrings of length 8 that consist of only consecutive letters a, b, or c. This regular expression is:

[a-c]{8}

The [a-c] part of the regular expression matches any letter from a to c. The {8} part of the regular expression matches a string of 8 characters.

The code then uses the yylex() function to scan the input string for matches to the regular expression. If a match is found, the code prints out the substring.

Q2_1

Regex to tokenize simple expressions in C
This code uses a regular expression to tokenize simple expressions in C. A simple expression is an expression that consists of numbers, variables, and the following operators:

<
<=
=

=
!=
How to use
To use this code, simply pass it a string as input. The code will then print out the tokens in the expression.

For example, if you pass the code the string "x < y", it will print out the following:

(NUMBER, x)
(RELOP, <)
(ID, y)

How it works
The code first defines a regular expression that matches the tokens in a simple expression. This regular expression is:

[0-9]+      # Matches a number
[a-zA-Z]+    # Matches a variable
(<|>|<=|>=|=|!=) # Matches an operator

The code then uses the yylex() function to scan the input string for matches to the regular expression. If a match is found, the code prints out the token.

Q3_1

A simple C language lexer
This code is a simple C language lexer. A lexer is a program that takes a string of text as input and breaks it up into tokens. Tokens are the basic building blocks of a programming language.

How to use
To use this code, simply replace the input.txt file with your own C language source code file. Then, run the following command:

lex lexer.l
This will create a file called lexer.yy.c. You can then compile and run this file to see the tokens that are generated from your C language source code.

How it works
The code first defines a set of regular expressions that match the different tokens in the C language. For example, the following regular expression matches an integer literal:

[0-9]+
The code then uses the yylex() function to scan the input string for matches to the regular expressions. If a match is found, the code returns the corresponding token type.