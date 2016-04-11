%{
#include <stdio.h>
#include "yytab.h"

#define YYSTYPE int    /* data type of yacc stack */
extern YYSTYPE yylval;
%}

%%

[0-9]+                  yylval=atoi(yytext); return NUMBER;
quit			return QUIT;
[\+,\-,\*,\%,\/,\(,\)]	return yytext[0];
\n                      return '\n';
[ \t]+                  return ' ';

%%
