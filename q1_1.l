%{
#include <stdio.h>

int ones_count = 0;


size_t strlen(const char *str)
{
    const char *s;
    for (s = str; *s; ++s);
    return(s - str);
}


void printValidBinaryString(const char *binaryString) {
    int stringLength = strlen(binaryString);
    printf("Valid binary string: %s with size : %d\n", binaryString,stringLength);
}

void printInvalidBinaryString(const char *binaryString){
    printf("Invalid binary string: %s ", binaryString,stringLength);
}
void resetOnNewLine() {
    ones_count = 0;
}
%}

%%
0|1 {
    if (yytext[0] == '1') {
        ones_count++;
    }

    if (ones_count >= 4) {
        printValidBinaryString(yytext);
    }else{
        printInvalidBinaryString(yytext);
    }

    ECHO;
}

\n {
    resetOnNewLine();
}

. {
    // Ignore any other characters
}
%%

int main() {
    yylex();
    return 0;
}
