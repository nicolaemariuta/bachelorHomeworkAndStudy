/*
 *	LEX.L - lexical analyzer for DATES program
 */

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dates.h"
#include "errorlib.h"

extern int yylval;

#define MON(x)	{ yylval = x;  return MONTH; }
%}

%%

Jan("."|uary)?		MON(1);		/* months & abbreviations */
Feb("."|ruary)?		MON(2);
Mar("."|ch)?		MON(3);
Apr("."|il)?		MON(4);
May			MON(5);
Jun("."|e)?		MON(6);
Jul("."|y)?		MON(7);
Aug("."|ust)?		MON(8);
Sep("."|tember)?	MON(9);
Oct("."|ober)?		MON(10);
Nov("."|ember)?		MON(11);
Dec("."|ember)?		MON(12);

[0-9]+			{ yylval = atoi(yytext);  return NUMBER; }
[ \t]			;			/* delete whitespace */
\n			{ ++yylineno;  return '\n'; }
.			return yytext[0];	/* return single characters */
