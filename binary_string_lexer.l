%{
int ones_count = 0;
%}

%%
0|1 {
    if (yytext[0] == '1') {
        ones_count++;
    }

    if (ones_count >= 4) {
        printf("Valid binary string: %s\n", yytext);
    }

    ECHO;
}

\n {
    ones_count = 0;
}

. {
    // Ignore any other characters
}

%%

int main() {
    yylex();
    return 0;
}
