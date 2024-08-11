/* recognize tokens for the calculator */

%option noyywrap nodefault yylineno
%{
#include "token.h"

void yyerror(char *s, ...);
%}
NUM [0-9]+
%%
[ \t]+
{NUM}     { return NUMBER; }
"+"       { return PLUS; }
"-"       { return MINUS; }
"*"       { return TIMES; } 
"/"       { return DIV; }
\n        { return EOL; }
.         { return ERROR; }
%%