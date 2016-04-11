%{
#include <stdio.h>
#include "yytab.h"

typedef union {
char c;
int i;
float r;
char *s;
} YYSTYPE;

extern YYSTYPE yylval;
%}

%%

[0-9]+                  yylval.i=atoi(yytext); return NUMBER;
quit			return QUIT;
[\+,\-,\*,\%,\/,\(,\)]	return yytext[0];
\n                      return '\n';
[ \t]+                  return ' ';

%%
