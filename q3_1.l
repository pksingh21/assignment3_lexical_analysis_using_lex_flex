%{
#include <stdio.h>
%}

%option noyywrap

%{
#define INT 1
#define FLOAT 2
#define CHAR 3
#define IF 4
#define FOR 5
#define WHILE 6
#define INPUT 7
#define DISPLAY 8
#define MAIN 9
#define ASSIGN 10
#define EQ 11
#define LT 12
#define GT 13
#define PLUS 14
#define MINUS 15
#define MULT 16
#define DIV 17
#define LPAREN 18
#define RPAREN 19
#define LBRACE 20
#define RBRACE 21
#define SEMICOLON 22
#define NUM 23
#define ID 24

const char *token_names[] = {
    "UNKNOWN", "INT", "FLOAT", "CHAR", "IF", "FOR", "WHILE", "INPUT", "DISPLAY",
    "MAIN", "ASSIGN", "EQ", "LT", "GT", "PLUS", "MINUS", "MULT", "DIV",
    "LPAREN", "RPAREN", "LBRACE", "RBRACE", "SEMICOLON", "NUM", "ID"
};
%}

%%
"INT"|"int"       { return INT; }
"FLOAT"|"float"   { return FLOAT; }
"CHAR"|"char"     { return CHAR; }
"if"              { return IF; }
"for"             { return FOR; }
"while"           { return WHILE; }
"input"           { return INPUT; }
"display"         { return DISPLAY; }
"main"            { return MAIN; }
"="               { return ASSIGN; }
"=="              { return EQ; }
"<"               { return LT; }
">"               { return GT; }
"+"               { return PLUS; }
"-"               { return MINUS; }
"*"               { return MULT; }
"/"               { return DIV; }
"("               { return LPAREN; }
")"               { return RPAREN; }
"{"               { return LBRACE; }
"}"               { return RBRACE; }
";"               { return SEMICOLON; }
[0-9]+            { return NUM; }
[a-zA-Z][a-zA-Z0-9]*  { return ID; }
[ \t\n]           ;  // Skip whitespace and newlines
.                 { printf("Invalid character: %c\n", yytext[0]); }
%%

int main() {
    yyin = fopen("input.txt", "r");  // Replace "input.txt" with your input file name
    int token;
    
    while ((token = yylex())) {
        if (token >= 1 && token <= 24) {
            printf("%s %s\n", token_names[token],yytext);
        } else {
            printf("Unknown token\n");
        }
    }

    fclose(yyin);
    return 0;
}
