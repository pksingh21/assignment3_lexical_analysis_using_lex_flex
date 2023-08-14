%{
#include <stdio.h>
int a_found=0;
int b_found=0;
%}

%%
[a-c]* {
 // loop through yytext variable to find consecutive a or b
 if(yyleng==8){
 for(int i=0;i<7;i++){
    if(yytext[i]==yytext[i+1]&&yytext[i]=='a'){
    a_found++; 
    }else if(yytext[i]==yytext[i+1]&&yytext[i]=='b'){
    b_found++; 
    }
 }
 if(a_found||b_found){
    printf("valid substring found \n");
 }
 }else if(yyleng>8){
    printf(" input violates length of 8\n");
 }
}

.|\n {
    // Ignore any characters that do not match the above pattern
    printf("invalid character found\n");
}
%%

int main() {
    yylex();
    return 0;
}
