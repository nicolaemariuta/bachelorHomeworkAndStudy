/*
 * ERRORLIB.H - prototypes and extern's for PCYACC error reporting code
 *
 *	(c) Copyright 1989, Abraxas Software, Inc.
*/

extern int errct;		/* count of errors */
extern int errfl;		/* error flag (in yaccpar.c) */
extern int token;		/* lookahead token */
extern FILE *yyerrfile;		/* output file for error messages */
extern char yyerrsrc[64];	/* name of input file */
extern int yylineno;		/* line # of current line */
extern char *yytext;		/* current token's text */


extern void yyerror(char *, char *);
extern char *yydisplay(int);
