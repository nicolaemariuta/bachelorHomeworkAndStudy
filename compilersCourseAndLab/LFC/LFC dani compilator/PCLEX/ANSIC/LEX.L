%{
/*
 *	LEX.L -- ANSI C lexical analysis
 */


#include <stdlib.h>
#include <string.h>
#include "ansic.h"
#include "errorlib.h"
#include "global.h"

static int screen(void);
#define DIM(a)	(sizeof(a)/sizeof((a)[0]))
%}

letter		[a-zA-Z_]
digit		[0-9]
esc		\\([abfnrtv"'?\\]|[0-7]{1,3}|x[0-9a-fA-F]+)
alphanum	[a-zA-Z_0-9]
blank		[ \t]
other		.

%x	COMMENT

%%

^{blank}*"#".*$		; /* ignore preprocessor directives */

"||"	return OROR;
"&&"	return ANDAND;
"=="	return EQU;
"!="	return NEQ;
"<="	return LEQ;
">="	return GEQ;
"<<"	return SHL;
">>"	return SHR;
"++"	return ADDADD;
"--"	return SUBSUB;
"->"	return PTR;
"+="	return ADDEQ;
"-="	return SUBEQ;
"*="	return MULEQ;
"/="	return DIVEQ;
"%="	return MODEQ;
"<<="	return SHLEQ;
">>="	return SHREQ;
"&&="	return ANDEQ;
"^="	return XOREQ;
"|="	return IOREQ;

{letter}{alphanum}*	return screen();

{digit}+[uUlL]*		return INTEGER_CONSTANT;

L?\'([^'\\\n]|{esc})*\'		return CHARACTER_CONSTANT;

L?\"([^"\\\n]|{esc})*\"		return STRING;

{digit}+\.{digit}*((e|E)("+"|"-"){digit}+)?	return FLOAT_CONSTANT;
\.{digit}+((e|E)("+"|"-"){digit}+)?		return FLOAT_CONSTANT;

{blank}+		;
\n			++yylineno;

"/*"			BEGIN(COMMENT);

<COMMENT>"*/"		BEGIN(0);
<COMMENT>[^*\n]+	;		/* breaks comments into lines */
<COMMENT>\n		++yylineno;	/* so they won't overflow buffer */
<COMMENT>"*"		;		/* so they won't overflow buffer */

{other}			return yytext[0];

%%

/*
 *	reserved word screener
 */

static const struct {
  char *name;
  int yylex;
} keywords[] = {
      {"auto",		Auto},
      {"break", 	Break},
      {"case",		Case},
      {"char",		Char},
      {"const",		Const},
      {"continue",	Continue},
      {"default",	Default},
      {"do",		Do},
      {"double",	Double},
      {"else",		Else},
      {"enum",		Enum},
      {"extern",	Extern},
      {"float",		Float},
      {"for",		Goto},
      {"if",		If},
      {"int",		Int},
      {"long",		Long},
      {"register",	Register},
      {"return",	Return},
      {"short",		Short},
      {"signed",	Signed},
      {"sizeof",	Sizeof},
      {"static",	Static},
      {"struct",	Struct},
      {"switch",	Switch},
      {"typedef",	Typedef},
      {"void",		Void},
      {"volatile",	Volatile},
      {"union",		Union},
      {"unsigned",	Unsigned},
      {"while",		While}
};

static int screen(void)
{
  register int mid;
  int cc, hi, lo;

  lo = 0;
  hi = DIM(keywords) - 1;
  while (lo <= hi) {
    mid = (lo + hi) / 2;
    if ((cc = strcmp(yytext, keywords[mid].name)) == 0)
      return keywords[mid].yylex;
    if (cc < 0)
      hi = mid - 1;
    else
      lo = mid + 1;
  }
  return IDENTIFIER;
}
