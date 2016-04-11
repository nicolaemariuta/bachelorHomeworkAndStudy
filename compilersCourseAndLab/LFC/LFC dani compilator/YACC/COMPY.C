
# line 3 "compy.y"
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

#define NUMAR 257
#define CUVANT 258
#define SPATIU 259
#define UNARYMINUS 260
#ifndef YYSTYPE
#define YYSTYPE int
#endif
YYSTYPE yylval, yyval;
#define YYERRCODE 256

# line 329 "compy.y"


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

FILE *yytfilep;
char *yytfilen;
int yytflag = 0;
int svdprd[2];
char svdnams[2][2];

int yyexca[] = {
  -1, 1,
  0, -1,
  -2, 0,
  0,
};

#define YYNPROD 14
#define YYLAST 251

int yyact[] = {
      13,       2,       5,       4,       8,      12,      17,      15,
       9,      16,      17,      18,      25,      17,      15,      18,
      16,       6,      18,       1,       0,      19,      20,      14,
      21,      22,      23,      24,      13,      15,      16,      17,
      18,       9,       3,       0,       0,       0,       0,       7,
       0,       0,       3,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,      10,      11,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       5,       4,
};

int yypact[] = {
   -1000,      -9,   -1000,       7,    -256,     -57,   -1000,   -1000,
     -40,     -36,   -1000,   -1000,     -40,     -40,   -1000,     -40,
     -40,     -40,     -40,   -1000,     -29,     -32,     -32,   -1000,
   -1000,   -1000,
};

int yypgo[] = {
       0,      19,      34,       8,
};

int yyr1[] = {
       0,       1,       1,       1,       2,       2,       3,       3,
       3,       3,       3,       3,       3,       3,
};

int yyr2[] = {
       2,       0,       2,       3,       2,       4,       1,       1,
       3,       3,       3,       3,       2,       3,
};

int yychk[] = {
   -1000,      -1,      10,      -2,     259,     258,      10,      -2,
      61,      -3,     257,     258,      45,      40,      59,      43,
      45,      42,      47,      -3,      -3,      -3,      -3,      -3,
      -3,      41,
};

int yydef[] = {
       1,      -2,       2,       0,       0,       0,       3,       4,
       0,       0,       6,       7,       0,       0,       5,       0,
       0,       0,       0,      12,       0,       8,       9,      10,
      11,      13,
};

int *yyxi;


/*****************************************************************/
/* PCYACC LALR parser driver routine -- a table driven procedure */
/* for recognizing sentences of a language defined by the        */
/* grammar that PCYACC analyzes. An LALR parsing table is then   */
/* constructed for the grammar and the skeletal parser uses the  */
/* table when performing syntactical analysis on input source    */
/* programs. The actions associated with grammar rules are       */
/* inserted into a switch statement for execution.               */
/*****************************************************************/


#ifndef YYMAXDEPTH
#define YYMAXDEPTH 200
#endif
#ifndef YYREDMAX
#define YYREDMAX 1000
#endif
#define PCYYFLAG -1000
#define WAS0ERR 0
#define WAS1ERR 1
#define WAS2ERR 2
#define WAS3ERR 3
#define yyclearin pcyytoken = -1
#define yyerrok   pcyyerrfl = 0
YYSTYPE yyv[YYMAXDEPTH];     /* value stack */
int pcyyerrct = 0;           /* error count */
int pcyyerrfl = 0;           /* error flag */
int redseq[YYREDMAX];
int redcnt = 0;
int pcyytoken = -1;          /* input token */


yyparse()
{
  int statestack[YYMAXDEPTH]; /* state stack */
  int      j, m;              /* working index */
  YYSTYPE *yypvt;
  int      tmpstate, tmptoken, *yyps, n;
  YYSTYPE *yypv;


  tmpstate = 0;
  pcyytoken = -1;
#ifdef YYDEBUG
  tmptoken = -1;
#endif
  pcyyerrct = 0;
  pcyyerrfl = 0;
  yyps = &statestack[-1];
  yypv = &yyv[-1];


  enstack:    /* push stack */
#ifdef YYDEBUG
    printf("at state %d, next token %d\n", tmpstate, tmptoken);
#endif
    if (++yyps - &statestack[YYMAXDEPTH] > 0) {
      yyerror("pcyacc internal stack overflow");
      return(1);
    }
    *yyps = tmpstate;
    ++yypv;
    *yypv = yyval;


  newstate:
    n = yypact[tmpstate];
    if (n <= PCYYFLAG) goto defaultact; /*  a simple state */


    if (pcyytoken < 0) if ((pcyytoken=yylex()) < 0) pcyytoken = 0;
    if ((n += pcyytoken) < 0 || n >= YYLAST) goto defaultact;


    if (yychk[n=yyact[n]] == pcyytoken) { /* a shift */
#ifdef YYDEBUG
      tmptoken  = pcyytoken;
#endif
      pcyytoken = -1;
      yyval = yylval;
      tmpstate = n;
      if (pcyyerrfl > 0) --pcyyerrfl;
      goto enstack;
    }


  defaultact:


    if ((n=yydef[tmpstate]) == -2) {
      if (pcyytoken < 0) if ((pcyytoken=yylex())<0) pcyytoken = 0;
      for (yyxi=yyexca; (*yyxi!= (-1)) || (yyxi[1]!=tmpstate); yyxi += 2);
      while (*(yyxi+=2) >= 0) if (*yyxi == pcyytoken) break;
      if ((n=yyxi[1]) < 0) { /* an accept action */
        if (yytflag) {
          int ti; int tj;
          yytfilep = fopen(yytfilen, "w");
          if (yytfilep == NULL) {
            fprintf(stderr, "Can't open t file: %s\n", yytfilen);
            return(0);          }
          for (ti=redcnt-1; ti>=0; ti--) {
            tj = svdprd[redseq[ti]];
            while (strcmp(svdnams[tj], "$EOP"))
              fprintf(yytfilep, "%s ", svdnams[tj++]);
            fprintf(yytfilep, "\n");
          }
          fclose(yytfilep);
        }
        return (0);
      }
    }


    if (n == 0) {        /* error situation */
      switch (pcyyerrfl) {
        case WAS0ERR:          /* an error just occurred */
          yyerror("syntax error");
          yyerrlab:
            ++pcyyerrct;
        case WAS1ERR:
        case WAS2ERR:           /* try again */
          pcyyerrfl = 3;
	   /* find a state for a legal shift action */
          while (yyps >= statestack) {
	     n = yypact[*yyps] + YYERRCODE;
	     if (n >= 0 && n < YYLAST && yychk[yyact[n]] == YYERRCODE) {
	       tmpstate = yyact[n];  /* simulate a shift of "error" */
	       goto enstack;
            }
	     n = yypact[*yyps];


	     /* the current yyps has no shift on "error", pop stack */
#ifdef YYDEBUG
            printf("error: pop state %d, recover state %d\n", *yyps, yyps[-1]);
#endif
	     --yyps;
	     --yypv;
	   }


	   yyabort:
            if (yytflag) {
              int ti; int tj;
              yytfilep = fopen(yytfilen, "w");
              if (yytfilep == NULL) {
                fprintf(stderr, "Can't open t file: %s\n", yytfilen);
                return(1);              }
              for (ti=1; ti<redcnt; ti++) {
                tj = svdprd[redseq[ti]];
                while (strcmp(svdnams[tj], "$EOP"))
                  fprintf(yytfilep, "%s ", svdnams[tj++]);
                fprintf(yytfilep, "\n");
              }
              fclose(yytfilep);
            }
	     return(1);


	 case WAS3ERR:  /* clobber input char */
#ifdef YYDEBUG
          printf("error: discard token %d\n", pcyytoken);
#endif
          if (pcyytoken == 0) goto yyabort; /* quit */
	   pcyytoken = -1;
	   goto newstate;      } /* switch */
    } /* if */


    /* reduction, given a production n */
#ifdef YYDEBUG
    printf("reduce with rule %d\n", n);
#endif
    if (yytflag && redcnt<YYREDMAX) redseq[redcnt++] = n;
    yyps -= yyr2[n];
    yypvt = yypv;
    yypv -= yyr2[n];
    yyval = yypv[1];
    m = n;
    /* find next state from goto table */
    n = yyr1[n];
    j = yypgo[n] + *yyps + 1;
    if (j>=YYLAST || yychk[ tmpstate = yyact[j] ] != -n) tmpstate = yyact[yypgo[n]];
    switch (m) { /* actions associated with grammar rules */
      
      case 2:
# line 40 "compy.y"
      { linie++; } break;
      case 3:
# line 41 "compy.y"
      { linie++; } break;
      case 4:
# line 44 "compy.y"
      {          } break;
      case 5:
# line 45 "compy.y"
      { /* atribuire */
                                    int v;
                                    if (yypvt[-1].s[0]=='$')
                                    {
                                      fprintf(fisout, "\tmove\t$%d, %s\n\n", variabila(yypvt[-3].s), yypvt[-1].s);
                                      strcpy(yypvt[-1].s, yypvt[-1].s+1);
                                      v=atoi(yypvt[-1].s);
                                      if (v>nvar)
                                        stergeregtemp(v);
                                    }
                                    else
                                      fprintf(fisout, "\taddi\t$%d, $0, %s\n\n", variabila(yypvt[-3].s), yypvt[-1].s);
      
                              /* golim buffer-ele */
                                    free(yypvt[-3].s);
                                    free(yypvt[-1].s);
                                  } break;
      case 6:
# line 64 "compy.y"
      {
                                    yyval.s=(char *)malloc(20);
                                    sprintf(yyval.s, "%d", yypvt[-0].i);
                                  } break;
      case 7:
# line 68 "compy.y"
      {
                                    yyval.s=(char *)malloc(20);
                                    sprintf(yyval.s, "$%d", variabila(yypvt[-0].s));
                                  } break;
      case 8:
# line 72 "compy.y"
      {
                                    int v;
      
                              /* una dintre expr este variabila */
                                    if (yypvt[-2].s[0]=='$' || yypvt[-0].s[0]=='$')
                                      v=regtempnou();
                                    yyval.s=(char *)malloc(20);
      
                              /* 1 variabila si 3 numar */
                                    if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]!='$')
                                      fprintf(fisout, "\taddi\t$%d, %s, %s\n", v, yypvt[-2].s, yypvt[-0].s);
      
                              /* 1 variabila si 3 variabila */
                                    if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]=='$')
                                      fprintf(fisout, "\taddi\t$%d, %s, %s\n", v, yypvt[-2].s, yypvt[-0].s);
      
                              /* 1 numar si 3 variabila */
                                    if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]=='$')
                                      fprintf(fisout, "\taddi\t$%d ,%s, %s\n", v, yypvt[-0].s, yypvt[-2].s);
      
                              /* 1 numar si 3 numar */
                                    if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]!='$')
                                      sprintf(yyval.s, "%d", atoi(yypvt[-2].s) + atoi(yypvt[-0].s));
                                    else
                                      sprintf(yyval.s, "$%d", v);
      
                              /* 1 variabila, scoatem simbolul "$" */
                                    if(yypvt[-2].s[0]=='$')
                                    {
                                      strcpy(yypvt[-2].s,yypvt[-2].s+1);
                                      v=atoi(yypvt[-2].s);
                                      if(v>nvar)
                                        stergeregtemp(v);
                                    }
      
                              /* 3 variabila, scoatem simbolul "$" */
                                    if(yypvt[-0].s[0]=='$')
                                    {
                                      strcpy(yypvt[-0].s,yypvt[-0].s+1);
                                      v=atoi(yypvt[-0].s);
                                      if(v>nvar)
                                        stergeregtemp(v);
                                    }
      
                              /* golim buffer-ele */
                                    free(yypvt[-2].s);
                                    free(yypvt[-0].s);
                                  } break;
      case 9:
# line 121 "compy.y"
      {
                                    int v1;
      
                              /* una dintre expr este variabila */
                                    if (yypvt[-2].s[0]=='$' || yypvt[-0].s[0]=='$')
                                      v1=regtempnou();
                                    yyval.s=(char *)malloc(20);
      
                              /* 1 variabila si 3 numar */
                                    if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]!='$')
                                    {
                                      int v2;
                                      v2=regtempnou();
                                      fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, yypvt[-0].s);
                                      fprintf(fisout, "\tsub\t$%d, %s, $%d\n", v1, yypvt[-2].s, v2);
                                      stergeregtemp(v2);
                                    }
      
                              /* 1 variabila si 3 variabila */
                                    if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]=='$')
                                      fprintf(fisout, "\tsub\t$%d, %s, %s\n", v1, yypvt[-2].s, yypvt[-0].s);
      
                              /* 1 numar si 3 variabila */
                                    if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]=='$')
                                    {
                                      int v2;
                                      v2=regtempnou();
                                      fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, yypvt[-2].s);
                                      fprintf(fisout, "\tsub\t$%d, $%d, %s\n", v1, v2, yypvt[-0].s);
                                      stergeregtemp(v2);
                                    }
      
                              /* 1 numar si 3 numar */
                                    if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]!='$')
                                      sprintf(yyval.s, "%d", atoi(yypvt[-2].s) - atoi(yypvt[-0].s));
                                    else
                                      sprintf(yyval.s, "$%d", v1);
      
                              /* 1 variabila, scoatem simbolul "$" */
                                    if(yypvt[-2].s[0]=='$')
                                    {
                                      strcpy(yypvt[-2].s,yypvt[-2].s+1);
                                      v1=atoi(yypvt[-2].s);
                                      if(v1>nvar)
                                        stergeregtemp(v1);
                                    }
      
                              /* 3 variabila, scoatem simbolul "$" */
                                    if(yypvt[-0].s[0]=='$')
                                    {
                                      strcpy(yypvt[-0].s,yypvt[-0].s+1);
                                      v1=atoi(yypvt[-0].s);
                                      if(v1>nvar)
                                        stergeregtemp(v1);
                                    }
      
                              /* golim buffer-ele */
                                    free(yypvt[-2].s);
                                    free(yypvt[-0].s);
                                  } break;
      case 10:
# line 182 "compy.y"
      {
                                    int v1;
      
                              /* una dintre expr este variabila */
                                    if (yypvt[-2].s[0]=='$' || yypvt[-0].s[0]=='$')
                                      v1=regtempnou();
                                    yyval.s=(char *)malloc(20);
      
                              /* 1 variabila si 3 numar */
                                    if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]!='$')
                                    {
                                      int v2;
      			        v2 = regtempnou();
      			        fprintf(fisout, "\taddi\t$%d, $0, %s\n", v1, yypvt[-0].s);
      			        fprintf(fisout, "\tmult\t$%d, %s, $%d\n", v1, yypvt[-2].s, v2);
      			        stergeregtemp(v2);
                                    }
                                    /* 1 variabila si 3 variabila */
                                    if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]=='$')
                                      fprintf(fisout, "\tmult\t$%d, %s, %s\n", v1, yypvt[-2].s, yypvt[-0].s);
      
                              /* 1 numar si 3 variabila */
                                    if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]=='$')
                                    {
                                      int v2;
      			        v2 = regtempnou();
      			        fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, yypvt[-2].s);
      			        fprintf(fisout, "\tmult\t$%d, $%d, %s\n", v1, v2, yypvt[-0].s);
      			        stergeregtemp(v2);
                                    }
      
                              /* 1 numar si 3 numar */
                                    if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]!='$')
                                      sprintf(yyval.s, "%d", atoi(yypvt[-2].s) * atoi(yypvt[-0].s));
                                    else
                                      sprintf(yyval.s, "$%d", v1);
      
                              /* 1 variabila, eliminam simbolul "$" */
                                    if(yypvt[-2].s[0]=='$')
                                    {
                                      strcpy(yypvt[-2].s,yypvt[-2].s+1);
                                      v1=atoi(yypvt[-2].s);
                                      if(v1>nvar)
                                        stergeregtemp(v1);
                                    }
      
                              /* 3 variabila, eliminam simbolul "$" */
                                    if(yypvt[-0].s[0]=='$')
                                    {
                                      strcpy(yypvt[-0].s,yypvt[-0].s+1);
                                      v1=atoi(yypvt[-0].s);
                                      if(v1>nvar)
                                        stergeregtemp(v1);
                                    }
      
                              /* golim buffer-ele */
                                    free(yypvt[-2].s);
                                    free(yypvt[-0].s);
                                  } break;
      case 11:
# line 242 "compy.y"
      {
                                    int v1;
      
                              /* una dintre expr este variabila */
                                    if (yypvt[-2].s[0]=='$' || yypvt[-0].s[0]=='$')
                                      v1=regtempnou();
                                    yyval.s=(char *)malloc(20);
      
                              /* 1 variabila si 3 numar */
                                    if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]!='$')
                                    {
                                      int v2;
      			        v2 = regtempnou();
      			        fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, yypvt[-0].s);
      			        fprintf(fisout, "\tdiv\t$%d, %s, $%d\n", v1, yypvt[-2].s, v2);
      			        stergeregtemp(v2);
                                    }
      
                              /* 1 variabila si 3 variabila */
                                    if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]=='$')
                                      fprintf(fisout, "\tdiv\t$%d, %s, %s\n", v1, yypvt[-2].s, yypvt[-0].s);
      
                              /* 1 numar si 3 variabila */
                                    if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]=='$')
                                    {
                                      int v2;
      			        v2 = regtempnou();
      			        fprintf(fisout, "\taddi\t$%d, $0, %s\n", v2, yypvt[-2].s);
      			        fprintf(fisout, "\tdiv\t$%d, $%d, %s\n", v1, v2, yypvt[-0].s);
      			        stergeregtemp(v2);
                                    }
                                    /* 1 numar si 3 numar */
                                    if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]!='$')
                                      sprintf(yyval.s, "%d", atoi(yypvt[-2].s) / atoi(yypvt[-0].s));
                                    else
                                      sprintf(yyval.s, "$%d", v1);
      
                              /* 1 variabila, eliminam simbolul "$" */
                                    if(yypvt[-2].s[0]=='$')
                                    {
                                      strcpy(yypvt[-2].s,yypvt[-2].s+1);
                                      v1=atoi(yypvt[-2].s);
                                      if(v1>nvar)
                                        stergeregtemp(v1);
                                    }
      
                              /* 3 variabila, eliminam simbolul "$" */
                                    if(yypvt[-0].s[0]=='$')
                                    {
                                      strcpy(yypvt[-0].s,yypvt[-0].s+1);
                                      v1=atoi(yypvt[-0].s);
                                      if(v1>nvar)
                                        stergeregtemp(v1);
                                    }
      
                              /* golim buffer-ele */
                                    free(yypvt[-2].s);
                                    free(yypvt[-0].s);
                                  } break;
      case 12:
# line 303 "compy.y"
      {
                                    int v=regtempnou();
                                    yyval.s=(char *)malloc(20);
                                    if(yypvt[-0].s[0]=='$')
                                    {
                                      fprintf(fisout, "\tsub\t$%d, $0, %s\n", v, yypvt[-0].s);
                                      sprintf(yyval.s, "$%d", v);
                                      strcpy(yypvt[-0].s, yypvt[-0].s+1);
                                      v=atoi(yypvt[-0].s);
                                      if(v>nvar)
                                        stergeregtemp(v);
                                    }
                                    else
                                    {
                                      sprintf(yyval.s, "%d", -atoi(yypvt[-0].s));
                                      stergeregtemp(v);
                                    }
                                    
                                    /* golim buffer-ul */
                                    free(yypvt[-0].s);
                                  } break;
      case 13:
# line 325 "compy.y"
      { yyval.s=yypvt[-1].s; } break;    }
    goto enstack;
}
