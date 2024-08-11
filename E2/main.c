#include <stdio.h>
#include "token.h"

extern int yylex();
extern char *yytext;

int main(){

    token_t token = -1;
    while(token != EOL){
        token = yylex();

        if(token == ERROR){
            printf("Error on reading token %s\n", yytext);
        } else if(token != NUMBER){
            printf("codigo do token: %d\n", token);
        } else {
            printf("constante decimal: %s\n", yytext);
        }
    }
}