%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

%option noyywrap

%%
"if"        { return IF; }
"else"      { return ELSE; }

[a-zA-Z_][a-zA-Z0-9_]*   { return ID; }
[0-9]+      { return NUM; }

"+"         { return PLUS; }
";"         { return SEMI; }
"("         { return LPAREN; }
")"         { return RPAREN; }

[ \t\n]+    ;   /* ignore whitespace */

.           {
                printf("Bad character: %s\n", yytext);
            }
%%
