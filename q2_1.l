%{
#include <stdio.h>
%}

digit       [0-9]
digits      {digit}+
number      {digits}(\.{digits})?(E[+-]?{digits})?
letter      [A-Za-z]
id          {letter}({letter}|{digit})*
if          if
then        then
else        else
repo        [<|>|<>|=|>=|<=]

%%

{number}    { printf("(NUMBER, %s)\n", yytext); }
{if}        { printf("(IF,)\n"); }
{then}      { printf("(THEN,)\n"); }
{else}      { printf("(ELSE,)\n"); }
{repo}      { printf("(RELOP, %s)\n", yytext); }
{id}        { printf("(ID, %s)\n", yytext); }
.           { /* Ignore other characters */ }

%%

int yywrap(void){return 1;}

int main() {
    yylex();
    return 0;
}
