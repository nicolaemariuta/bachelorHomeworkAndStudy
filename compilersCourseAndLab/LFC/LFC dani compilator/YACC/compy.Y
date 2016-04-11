/* Descrierea fisierului YACC, care va efectua analiza sintactica a fisierului de intrare */
%{
/* includeri de biblioteci folosite de catre proceduri */
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

/* definirea tipului stivei, identica cu cea din LEX */
typedef union
{
int i;
char *s;
} tipStiva;

#define YYSTYPE tipStiva

/* definirea variabilelor folosite */
int linie=1;                       /* numarul liniei */
int nvar=1;                        /* numarul de variabile identificate la compilare */
int nregtemp=0;                    /* numarul de registri temporari utilizati */
int regtemp[32];                   /* vector de regstri: 0-reg temp liber, 1-reg temp utilizat */
char denvar[32][20];               /* vector care retine denumirile variabilelor intalnite */
FILE *fisin, *fisout;              /* pointeri catre fluxul de intrare/iesire */

%}

/* definirea token-ilor si a precedentelor */

%token NUMAR, CUVANT, SPATIU
%left '+','-'
%left '*','/'
%left UNARYMINUS
  
%%
/* definirea regulilor gramaticii */

linie: 
       |linie '\n'          { linie++; }
       |linie instr '\n'    { linie++; }
       ;

instr:  SPATIU instr        {          }
       |CUVANT '=' expr ';' { /* atribuire */
                              int v;
                              if ($3.s[0]=='$')
                              {
                                fprintf(fisout, "\tmove\t$%d, %s\n\n", variabila($1.s), $3.s);
                                strcpy($3.s, $3.s+1);
                                v=atoi($3.s);
                                if (v>nvar)
                                  stergeregtemp(v);
                              }
                              else
                                fprintf(fisout, "\taddi\t$%d, $0, %s\n\n", variabila($1.s), $3.s);

                              /* golim buffer-ele */
                              free($1.s);
                              free($3.s);
                            }
       ;

expr:   NUMAR               {
                              $$.s=(char *)malloc(20);
                              sprintf($$.s, "%d", $1.i);
                            }
       |CUVANT              {
                              $$.s=(char *)malloc(20);
                              sprintf($$.s, "$%d", variabila($1.s));
                            }
       |expr '+' expr       {
                              int v;

                              /* una dintre expr este variabila */
                              if ($1.s[0]=='$' || $3.s[0]=='$')
                                v=regtempnou();
                              $$.s=(char *)malloc(20);

                              /* 1 variabila si 3 numar */
                              if ($1.s[0]=='$' && $3.s[0]!='$')
                                fprintf(fisout, "\taddi\t$%d, %s, %s\n", v, $1.s, $3.s);

                              /* 1 variabila si 3 variabila */
                              if ($1.s[0]=='$' && $3.s[0]=='$')
                                fprintf(fisout, "\taddi\t$%d, %s, %s\n", v, $1.s, $3.s);

                              /* 1 numar si 3 variabila */
                              if ($1.s[0]!='$' && $3.s[0]=='$')
                                fprintf(fisout, "\taddi\t$%d ,%s, %s\n", v, $3.s, $1.s);

                              /* 1 numar si 3 numar */
                              if ($1.s[0]!='$' && $3.s[0]!='$')
                                sprintf($$.s, "%d", atoi($1.s) + atoi($3.s));
                              else
                                sprintf($$.s, "$%d", v);

                              /* 1 variabila, scoatem simbolul "$" */
                              if($1.s[0]=='$')
                              {
                                strcpy($1.s,$1.s+1);
                                v=atoi($1.s);
                                if(v>nvar)
                                  stergeregtemp(v);
                              }

                              /* 3 variabila, scoatem simbolul "$" */
                              if($3.s[0]=='$')
                              {
                                strcpy($3.s,$3.s+1);
                                v=atoi($3.s);
                                if(v>nvar)
                                  stergeregtemp(v);
                              }

                              /* golim buffer-ele */
                              free($1.s);
                              free($3.s);
                            }

       |expr '-' expr       {
                              int v1;

                              /* una dintre expr este variabila */
                              if ($1.s[0]=='$' || $3.s[0]=='$')
                                v1=regtempnou();
                              $$.s=(char *)malloc(20);

                              /* 1 variabila si 3 numar */
                              if ($1.s[0]=='$' && $3.s[0]!='$')
                              {
                                int v2;
                                v2=regtempnou();
                                fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, $3.s);
                                fprintf(fisout, "\tsub\t$%d, %s, $%d\n", v1, $1.s, v2);
                                stergeregtemp(v2);
                              }

                              /* 1 variabila si 3 variabila */
                              if ($1.s[0]=='$' && $3.s[0]=='$')
                                fprintf(fisout, "\tsub\t$%d, %s, %s\n", v1, $1.s, $3.s);

                              /* 1 numar si 3 variabila */
                              if ($1.s[0]!='$' && $3.s[0]=='$')
                              {
                                int v2;
                                v2=regtempnou();
                                fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, $1.s);
                                fprintf(fisout, "\tsub\t$%d, $%d, %s\n", v1, v2, $3.s);
                                stergeregtemp(v2);
                              }

                              /* 1 numar si 3 numar */
                              if ($1.s[0]!='$' && $3.s[0]!='$')
                                sprintf($$.s, "%d", atoi($1.s) - atoi($3.s));
                              else
                                sprintf($$.s, "$%d", v1);

                              /* 1 variabila, scoatem simbolul "$" */
                              if($1.s[0]=='$')
                              {
                                strcpy($1.s,$1.s+1);
                                v1=atoi($1.s);
                                if(v1>nvar)
                                  stergeregtemp(v1);
                              }

                              /* 3 variabila, scoatem simbolul "$" */
                              if($3.s[0]=='$')
                              {
                                strcpy($3.s,$3.s+1);
                                v1=atoi($3.s);
                                if(v1>nvar)
                                  stergeregtemp(v1);
                              }

                              /* golim buffer-ele */
                              free($1.s);
                              free($3.s);
                            }

       |expr '*' expr       {
                              int v1;

                              /* una dintre expr este variabila */
                              if ($1.s[0]=='$' || $3.s[0]=='$')
                                v1=regtempnou();
                              $$.s=(char *)malloc(20);

                              /* 1 variabila si 3 numar */
                              if ($1.s[0]=='$' && $3.s[0]!='$')
                              {
                                int v2;
			        v2 = regtempnou();
			        fprintf(fisout, "\taddi\t$%d, $0, %s\n", v1, $3.s);
			        fprintf(fisout, "\tmult\t$%d, %s, $%d\n", v1, $1.s, v2);
			        stergeregtemp(v2);
                              }
                              /* 1 variabila si 3 variabila */
                              if ($1.s[0]=='$' && $3.s[0]=='$')
                                fprintf(fisout, "\tmult\t$%d, %s, %s\n", v1, $1.s, $3.s);

                              /* 1 numar si 3 variabila */
                              if ($1.s[0]!='$' && $3.s[0]=='$')
                              {
                                int v2;
			        v2 = regtempnou();
			        fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, $1.s);
			        fprintf(fisout, "\tmult\t$%d, $%d, %s\n", v1, v2, $3.s);
			        stergeregtemp(v2);
                              }

                              /* 1 numar si 3 numar */
                              if ($1.s[0]!='$' && $3.s[0]!='$')
                                sprintf($$.s, "%d", atoi($1.s) * atoi($3.s));
                              else
                                sprintf($$.s, "$%d", v1);

                              /* 1 variabila, eliminam simbolul "$" */
                              if($1.s[0]=='$')
                              {
                                strcpy($1.s,$1.s+1);
                                v1=atoi($1.s);
                                if(v1>nvar)
                                  stergeregtemp(v1);
                              }

                              /* 3 variabila, eliminam simbolul "$" */
                              if($3.s[0]=='$')
                              {
                                strcpy($3.s,$3.s+1);
                                v1=atoi($3.s);
                                if(v1>nvar)
                                  stergeregtemp(v1);
                              }

                              /* golim buffer-ele */
                              free($1.s);
                              free($3.s);
                            }

       |expr '/' expr       {
                              int v1;

                              /* una dintre expr este variabila */
                              if ($1.s[0]=='$' || $3.s[0]=='$')
                                v1=regtempnou();
                              $$.s=(char *)malloc(20);

                              /* 1 variabila si 3 numar */
                              if ($1.s[0]=='$' && $3.s[0]!='$')
                              {
                                int v2;
			        v2 = regtempnou();
			        fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, $3.s);
			        fprintf(fisout, "\tdiv\t$%d, %s, $%d\n", v1, $1.s, v2);
			        stergeregtemp(v2);
                              }

                              /* 1 variabila si 3 variabila */
                              if ($1.s[0]=='$' && $3.s[0]=='$')
                                fprintf(fisout, "\tdiv\t$%d, %s, %s\n", v1, $1.s, $3.s);

                              /* 1 numar si 3 variabila */
                              if ($1.s[0]!='$' && $3.s[0]=='$')
                              {
                                int v2;
			        v2 = regtempnou();
			        fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, $1.s);
			        fprintf(fisout, "\tdiv\t$%d, $%d, %s\n", v1, v2, $3.s);
			        stergeregtemp(v2);
                              }
                              /* 1 numar si 3 numar */
                              if ($1.s[0]!='$' && $3.s[0]!='$')
                                sprintf($$.s, "%d", atoi($1.s) / atoi($3.s));
                              else
                                sprintf($$.s, "$%d", v1);

                              /* 1 variabila, eliminam simbolul "$" */
                              if($1.s[0]=='$')
                              {
                                strcpy($1.s,$1.s+1);
                                v1=atoi($1.s);
                                if(v1>nvar)
                                  stergeregtemp(v1);
                              }

                              /* 3 variabila, eliminam simbolul "$" */
                              if($3.s[0]=='$')
                              {
                                strcpy($3.s,$3.s+1);
                                v1=atoi($3.s);
                                if(v1>nvar)
                                  stergeregtemp(v1);
                              }

                              /* golim buffer-ele */
                              free($1.s);
                              free($3.s);
                            }

       |'-' expr %prec UNARYMINUS
                            {
                              int v=regtempnou();
                              $$.s=(char *)malloc(20);
                              if($2.s[0]=='$')
                              {
                                fprintf(fisout, "\tsub\t$%d, $0, %s\n", v, $2.s);
                                sprintf($$.s, "$%d", v);
                                strcpy($2.s, $2.s+1);
                                v=atoi($2.s);
                                if(v>nvar)
                                  stergeregtemp(v);
                              }
                              else
                              {
                                sprintf($$.s, "%d", -atoi($2.s));
                                stergeregtemp(v);
                              }
                              
                              /* golim buffer-ul */
                              free($2.s);
                            }

       |'(' expr ')'        { $$.s=$2.s; }

       ;

%%

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
  
void main(int narg, char *argv[])
{
  int i;
  if(narg!=3)
    init(NULL, NULL, &fisin, &fisout);
  else
    init(argv[1], argv[2], &fisin, &fisout);
  for(i=0;i<32;i++)
    regtemp[i]=0;
  yyparse();
}

void yyerror(char *s)
{
  printf("Eroare linia %d:%s\n", linie, s);
  getch();
  exit(1);
}

int regtempnou()
{
  int v;
  if(nvar+nregtemp>=31)
  {
    yyerror("Nu mai exista registri liberi!\n");
  }

  v=31;
  while(v>0)
  {
    if(!regtemp[v])
      break;
    v--;
  }

  regtemp[v]=1;
  nregtemp++;
  return v;
}
  
void stergeregtemp(int v)
{
  regtemp[v]=0;
  nregtemp--;
}
  
int variabila(char *s)
{
  int i;
  for(i=1;i<nvar;i++)
    if(!strcmp(s,denvar[i]))
      return i;
  if (nvar+nregtemp>=31)
    yyerror("Nu mai sunt registri liberi!\n");

  strcpy(denvar[nvar++],s);
  return nvar-1;
}

