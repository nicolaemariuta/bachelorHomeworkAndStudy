/* Descrierea fisierului LEX, care va efectua analiza lexicala a fisierului de intrare */
%{
/* includeri de biblioteci folosite de catre proceduri */
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <string.h>
#include "yytab.h"

/* definirea tipului stivei, identica cu cea din YACC */
typedef union
{
int i;
char *s;
} tipStiva;

#define YYSTYPE tipStiva

/* definirea variabilei yylval de tipul YYSTYPE, ca variabila externa pt a putea fi folosita de catre YACC */
extern YYSTYPE yylval;

%}

/* definire de macro-uri */
cifra [0-9]
nrIntreg {cifra}+

%%
/* definirea expresiilor regulate */

{nrIntreg} { yylval.i = atoi(yytext);
             return NUMAR;
           }
[a-zA-Z][0-9a-zA-Z]*  { yylval.s = (char *)malloc(20);
                        strcpy(yylval.s, yytext);
                        return CUVANT;
                      }

[\+,\-,\*,\/,\=]     { return yytext[0]; }
[\(,\),\;]           { return yytext[0]; }
\n                   { return '\n';      }
[ ,\t]+              { return SPATIU;    }

%%

/* definirea procedurii init */
void init (char *nfin, char *nfout, FILE **fin, FILE **fout)
{
 /* initializeaza fluxul de intrare si fluxul de iesire */

  char numef[100];          /* variabila temporara pt salvarea numelor fisierelor */

 /* fisierul de intrare */

  if (nfin)
    strcpy(numef, nfin);
  else
  {
    printf("\nIntroduceti numele fisierului de intrare:");
    gets(numef);
  }

  yyin = fopen(numef,"r");       /* pointer catre fluxul de intrare */
  *fin = yyin;

  if (!yyin)
  {
    printf("\nFisierul de intrare nu poate fi deschis!");
    exit(1);
  }

  /* fisierul de iesire */

  if (nfout)
    strcpy(numef, nfout);
  else
  {
    printf("\nIntroduceti numele fisierului de iesire:");
    gets(numef);
  }

  yyout = fopen(numef, "w");     /* pointer catre fluxul de iesire */
  *fout = yyout;

  if (!yyout)
  {
    printf("\nFisierul de iesire nu a putut fi creat!");
    exit(1);
  }

}