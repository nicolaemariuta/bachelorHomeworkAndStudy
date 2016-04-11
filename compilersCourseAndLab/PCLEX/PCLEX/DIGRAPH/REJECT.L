%{
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>

unsigned digraph[128][128];
%}
letter	[a-zA-Z]
%%
{letter}{letter}	++digraph[yytext[0]][yytext[1]];  REJECT;
\n			;
.			;
%%
main()
{
  int i, j;

  yylex();
  for (i = 'A'; i <= 'z'; ++i) {
    if (isalpha(i)) {
      for (j = 'A'; j <= 'z'; ++j) {
        if (isalpha(j) && digraph[i][j] != 0)
	  printf("\"%c%c\": %d\n", i, j, digraph[i][j]);
      }
    }
  }
  exit(0);
}
