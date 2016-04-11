%{
typedef union
{
	int i;
	char *s;
} tipst;

#define YYSTYPE tipst
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <string.h>
#include "yytab.h"

extern YYSTYPE yylval;
%}

cifra [0-9]
nrIntreg {cifra}+

%%

{nrIntreg}		{
				yylval.i = atoi(yytext); 
				return NUMBER;
			}

[a-zA-Z][0-9a-zA-Z]*	{
				yylval.s = (char *)malloc(20);
				strcpy(yylval.s, yytext);
				return WORD;
			}

[\+,\-,\*,\/,\=]	{
				return yytext[0];
			}

[\(,\),\;,\[,\]]		{	
				return yytext[0];
			}

\n			{
				return '\n';
			}

[ \t]+			;

%%

void init (char *nfin, char *nfout, FILE **fin, FILE **fout)
{
	char name[100];

	if (nfin)
		strcpy(name, nfin);
	else
	{
		printf("Input file name: ");
		gets(name);
	}

	yyin = fopen(name, "r");
	*fin = yyin;

	if (!yyin)
	{
		printf("Error! Can\'t open input file!");
		exit(1);
	}

	if (nfout)
		strcpy(name, nfout);
	else
	{
		printf("Output file name: ");
		gets(name);
	}

	yyout = fopen(name, "w");
	*fout = yyout;

	if (!yyout)
	{
		printf("Error! Can\'t open output file!");
		exit(1);
	}
}

				