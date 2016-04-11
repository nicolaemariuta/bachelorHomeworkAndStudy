/*
 * ERRORLIB.C - error reporting code for PCYACC
 *
 *	(c) Copyright 1989, Abraxas Software, Inc.
*/

#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "errorlib.h"

#define DIM(a)	(sizeof(a)/sizeof(a[0]))
#define WIDTH	80				/* width of stderr device */
#define YYERRCODE	256


FILE *yyerrfile = stderr;		/* file to write error report to */
char  yyerrsrc[64] = "";		/* current input file name */
int   yylineno  = -1;			/* current line number */
char  *yyerrtok = NULL;			/* current token (text) */


/* errprefix - print where and what error message on yyerrfile */
static void errprefix(char *msg)
{ int punct = 0;

  fprintf(yyerrfile, "[error %d] ", errct+1);
  if (yyerrsrc[0] != '\0') {		/* any input file name? */
    fprintf(yyerrfile, "file '%s'", yyerrsrc);
    punct = 1;
  }
  if (yylineno >= 0) {		/* valid line number? */
    if (punct)
      fprintf(yyerrfile, ", ");
    fprintf(yyerrfile, "line %d", yylineno);
    punct = 1;
  }
  if (yyerrtok != NULL && *yyerrtok != '\0') {	/* real token? */
    if (punct)
      fprintf(yyerrfile, " ");
    fprintf(yyerrfile, "near \"%s\"", yyerrtok);
    punct = 1;
  }
  if (punct)
    fprintf(yyerrfile, ": ");
  fprintf(yyerrfile, "%s\n", msg);
}


/* yyerror - improved error reporting */
void yyerror(char *s, char *t)
{ static const char expecting[] = "expecting: ";
  static int list = 0;
  static int column = 0;

  if (s != NULL) {
    if (column != 0)
      fputc('\n', yyerrfile);
    errprefix(s);
    if (t == NULL)
      column = 0;
    else
      column = fprintf(yyerrfile, "actual: %s", t);
    list = 0;
  } else if (t != NULL) {
    if (list == 0) {
      if (column + strlen(t) + sizeof(expecting) + 1 < WIDTH - 2)
        column += fprintf(yyerrfile, "  %s%s", expecting, t);
      else
        column = fprintf(yyerrfile, "\n%s%s", expecting, t) - 1;
    } else {
      if (column + strlen(t) < WIDTH - 2)
        column += fprintf(yyerrfile, ", %s", t);
      else
        column = fprintf(yyerrfile, ",\n    %s", t) - 1;
    }
    ++list;
  } else {
    fprintf(yyerrfile, "\n");
    column = list = 0;
  }
}


/* yydisplay - returns pointer to printable form for token type in 'ch' */
char *
yydisplay(int ch)
{ static char *tok[] = {
#include "yytok.h"
	0
  };
  static char buf[16];

  switch (ch) {
    case         0: return ("[end of file]");
    case YYERRCODE: return ("[error]");
    case      '\a': return ("'\\a'");
    case      '\b': return ("'\\b'");
    case      '\f': return ("'\\f'");
    case      '\n': return ("'\\n'");
    case      '\r': return ("'\\r'");
    case      '\t': return ("'\\t'");
    case      '\v': return ("'\\v'");
  }
  if (ch > YYERRCODE && ch < YYERRCODE + DIM(tok))
    return (tok[ch-(YYERRCODE + 1)]);		/* is %token */
  if (isascii(ch) && isprint(ch))
    sprintf(buf, "'%c'", ch);			/* printable */
  else
    sprintf(buf, "char %d", ch);		/* unprintable */
  return(buf);
}
