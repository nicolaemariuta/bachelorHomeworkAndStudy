%{
#include <stdio.h>
#include "yytab.h"

typedef union {
int i;
float r;
char *s;
} YYSTYPE;

extern YYSTYPE yylval;
%}

%%
[0-9]+                  yylval.i=atoi(yytext); return NUMBER;
heat                    return TOKHEAT;
on|off                  yylval.i=!strcmp(yytext,"on"); return STATE;
target                  return TOKTARGET;
temperature             return TOKTEMPERATURE;
\n                      /* ignore end of line */;
[ \t]+                  /* ignore whitespace */;
%%
