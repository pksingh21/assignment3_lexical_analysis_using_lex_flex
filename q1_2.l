%{
#include <stdio.h>

int zeros_count = 0;
int ones_count = 0;

void printValidBinaryString(const char *binaryString) {
    printf("Valid binary string: %s\n", binaryString);
}
void printInvalidBinaryString(const char *binaryString){
    printf("Invalid binary string %s \n",binaryString);
}
void resetCounts() {
    zeros_count = 0;
    ones_count = 0;
}
%}

%%
[0|1] {
    if (yytext[0] == '0') {
        zeros_count++;
    } else {
        ones_count++;
    }

    if ((zeros_count % 2 == 0) || (ones_count % 2 == 1)) {
        printValidBinaryString(yytext);
    } else{
        printInvalidBinaryString(yytext);
    }

    // ECHO;
}

\n {
    resetCounts();
}

. {
    // Ignore any other characters
}
%%

int main() {
    yylex();
    return 0;
}
