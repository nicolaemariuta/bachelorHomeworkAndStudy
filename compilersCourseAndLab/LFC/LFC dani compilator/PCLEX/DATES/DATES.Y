/*
 *	DATE.Y -- grammar for U.S. and European dates
 */

%{
#include <stdio.h>
#include "errorlib.h"

static void date(int, int, int);
%}

%token MONTH NUMBER

%start input

%%

input	:	/* empty file is legal */
	|  input date '\n'
	|  input error '\n'	{ yyerrok; }	/* ignore line if error */
	;


date	:  MONTH  day ',' year		/* U.S. text form */
		{ date($1, $2, $4); }
	|  day MONTH year		/* European text form */
		{ date($2, $1, $3); }
	|  month '/' day '/' year		/* U.S. short form */
		{ date($1, $3, $5); }
	|  day '.' month '.' year		/* European short form */
		{ date($3, $1, $5); }
	;


day	:  NUMBER
	;

month	:  NUMBER
	;

year	:  NUMBER
	;

%%

main()
{
  yylineno = 1;		/* initialization, incremented in "lex.l" */

  exit(yyparse());
}


/* date - generic date action routine */
static void date(int month, int day, int year)
{
  /* echo date to stdout in US. short form */
  printf("%d/%d/%d\n", month, day, year);
}
