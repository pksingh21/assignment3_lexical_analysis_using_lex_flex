%{
#include <stdio.h>
int a_found=0;
int b_found=0;
%}

%%
[a-c]{8} {
 // loop through yytext variable to find consecutive a or b
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
}

.|\n {
    // Ignore any characters that do not match the above pattern
}
%%

int main() {
    yylex();
    return 0;
}
