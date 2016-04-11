
# line 2 "comp.y"
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

typedef union
{
	int i;
	char* s;
} tipst;

#define YYSTYPE tipst				/* tipul valorilor din stiva yacc */

int linie=1,nvar=1,nvaraux=0,varaux[32];
char denvar[32][20];
FILE *fisin,*fisout;

#define SPATIU 257
#define NUMAR 258
#define CUVANT 259
#define UNARYMINUS 260
#ifndef YYSTYPE
#define YYSTYPE int
#endif
YYSTYPE yylval, yyval;
#define YYERRCODE 256

# line 143 "comp.y"


#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

void main(int narg,char *argv[])
{
	int i;
	if (narg!=3) init(NULL,NULL,&fisin,&fisout);
	else init(argv[1],argv[2],&fisin,&fisout);
	for (i=0;i<32;i++) varaux[i]=0;
	yyparse();
}

void yyerror(char *s)		/* functie apelata cand apar erori de sintaxa yacc */
{
	printf("Eroare linia %d: %s\n",linie,s);
	getch();
	exit(1);
}

int varauxnoua()
{
	int v;
	if (nvar+nvaraux>=31) { yyerror("Nu mai exista registrii liberi."); getch(); }
	v=31;
	while (v>0)
	{
		if (!varaux[v]) break;
		v--;
	}
	varaux[v]=1; nvaraux++;
	return v;
}

void scoatevaraux(int v)
{
	varaux[v]=0;
	nvaraux--;
}

int variabila(char *s)
{
	int i;
	for (i=1;i<nvar;i++) if (!strcmp(s,denvar[i])) return i;
	if (nvar+nvaraux>=31) { yyerror("Nu mai exista registrii liberi."); getch(); }
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

#define YYNPROD 13
#define YYLAST 251

int yyact[] = {
      13,       2,       4,       8,       5,      12,      17,      15,
      17,      16,      23,      17,      15,       9,      16,       6,
       3,       1,       0,       0,       0,       7,       0,      14,
       3,       0,      18,      19,       0,      20,      21,      22,
      13,      15,      16,      17,       9,       0,       0,       0,
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
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,      10,      11,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       0,       0,       0,       0,       0,       0,       0,       0,
       4,       0,       5,
};

int yypact[] = {
   -1000,      -9,   -1000,       5,    -255,     -58,   -1000,   -1000,
     -40,     -36,   -1000,   -1000,     -40,     -40,   -1000,     -40,
     -40,     -40,   -1000,     -31,     -34,     -34,   -1000,   -1000,
};

int yypgo[] = {
       0,      17,      16,      13,
};

int yyr1[] = {
       0,       1,       1,       1,       2,       2,       3,       3,
       3,       3,       3,       3,       3,
};

int yyr2[] = {
       2,       0,       2,       3,       2,       4,       1,       1,
       3,       3,       3,       2,       3,
};

int yychk[] = {
   -1000,      -1,      10,      -2,     257,     259,      10,      -2,
      61,      -3,     258,     259,      45,      40,      59,      43,
      45,      42,      -3,      -3,      -3,      -3,      -3,      41,
};

int yydef[] = {
       1,      -2,       2,       0,       0,       0,       3,       4,
       0,       0,       6,       7,       0,       0,       5,       0,
       0,       0,      11,       0,       8,       9,      10,      12,
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
# line 29 "comp.y"
      { linie++; } break;
      case 3:
# line 30 "comp.y"
      { linie++; } break;
      case 4:
# line 32 "comp.y"
      {} break;
      case 5:
# line 34 "comp.y"
      {
      			int v;
      			if (yypvt[-1].s[0]=='$') fprintf(fisout,"\tmove\t$%d,%s\n\n",variabila(yypvt[-3].s),yypvt[-1].s);
      			else fprintf(fisout,"\taddi\t$%d,$0,%s\n\n",variabila(yypvt[-3].s),yypvt[-1].s);
      			if (yypvt[-1].s[0]=='$')
      			{
      				strcpy(yypvt[-1].s,yypvt[-1].s+1);
      				v=atoi(yypvt[-1].s);
      				if (v>nvar) scoatevaraux(v);
      			}
      			free(yypvt[-3].s); free(yypvt[-1].s);
      		} break;
      case 6:
# line 47 "comp.y"
      { yyval.s=(char *)malloc(20); sprintf(yyval.s,"%d",yypvt[-0].i); } break;
      case 7:
# line 48 "comp.y"
      { yyval.s=(char *)malloc(20); sprintf(yyval.s,"$%d",variabila(yypvt[-0].s)); free(yypvt[-0].s); } break;
      case 8:
# line 49 "comp.y"
      {
      				int v;
      				if (yypvt[-2].s[0]=='$' || yypvt[-0].s[0]=='$') v=varauxnoua();
       				yyval.s=(char *)malloc(20);
      				if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]!='$') fprintf(fisout,"\taddi\t$%d,%s,%s\n",v,yypvt[-2].s,yypvt[-0].s);
      				if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]=='$') fprintf(fisout,"\tadd \t$%d,%s,%s\n",v,yypvt[-2].s,yypvt[-0].s);
      				if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]=='$') fprintf(fisout,"\taddi\t$%d,%s,%s\n",v,yypvt[-0].s,yypvt[-2].s);
      				if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]!='$') sprintf(yyval.s,"%d",atoi(yypvt[-2].s)+atoi(yypvt[-0].s));
      				else sprintf(yyval.s,"$%d",v);
      				if (yypvt[-2].s[0]=='$')
      				{
      					strcpy(yypvt[-2].s,yypvt[-2].s+1);
      					v=atoi(yypvt[-2].s);
      					if (v>nvar) scoatevaraux(v);
      				}
      				if (yypvt[-0].s[0]=='$')
      				{
      					strcpy(yypvt[-0].s,yypvt[-0].s+1);
      					v=atoi(yypvt[-0].s);
      					if (v>nvar) scoatevaraux(v);
      				}
      				free(yypvt[-2].s); free(yypvt[-0].s);
      			} break;
      case 9:
# line 72 "comp.y"
      {
      				int v,v2;
      				if (yypvt[-2].s[0]=='$' || yypvt[-0].s[0]=='$') v=varauxnoua();
       				yyval.s=(char *)malloc(20);
      				if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]!='$') fprintf(fisout,"\taddi\t$%d,%s,-%s\n",v,yypvt[-2].s,yypvt[-0].s);
      				if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]=='$') fprintf(fisout,"\tsub \t$%d,%s,%s\n",v,yypvt[-2].s,yypvt[-0].s);
      				if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]=='$')
      				{
      					v2=varauxnoua();
      					fprintf(fisout,"\taddi\t$%d,$0,%s\n",v2,yypvt[-2].s);
      					fprintf(fisout,"\tsub\t$%d,$%d,%s\n",v,v2,yypvt[-0].s);
      					scoatevaraux(v2);
      				}
      				if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]!='$') sprintf(yyval.s,"%d",atoi(yypvt[-2].s)-atoi(yypvt[-0].s));
      				else sprintf(yyval.s,"$%d",v);
      				if (yypvt[-2].s[0]=='$')
      				{
      					strcpy(yypvt[-2].s,yypvt[-2].s+1);
      					v=atoi(yypvt[-2].s);
      					if (v>nvar) scoatevaraux(v);
      				}
      				if (yypvt[-0].s[0]=='$')
      				{
      					strcpy(yypvt[-0].s,yypvt[-0].s+1);
      					v=atoi(yypvt[-0].s);
      					if (v>nvar) scoatevaraux(v);
      				}
      				free(yypvt[-2].s); free(yypvt[-0].s);
      			} break;
      case 10:
# line 101 "comp.y"
      {
      				int v;
      				if (yypvt[-2].s[0]=='$' || yypvt[-0].s[0]=='$') v=varauxnoua();
       				yyval.s=(char *)malloc(20);
      				if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]!='$') fprintf(fisout,"\tmuli\t$%d,%s,%s\n",v,yypvt[-2].s,yypvt[-0].s);
      				if (yypvt[-2].s[0]=='$' && yypvt[-0].s[0]=='$') fprintf(fisout,"\tmult\t$%d,%s,%s\n",v,yypvt[-2].s,yypvt[-0].s);
      				if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]=='$') fprintf(fisout,"\tmuli\t$%d,%s,%s\n",v,yypvt[-0].s,yypvt[-2].s);
      				if (yypvt[-2].s[0]!='$' && yypvt[-0].s[0]!='$') sprintf(yyval.s,"%d",atoi(yypvt[-2].s)*atoi(yypvt[-0].s));
      				else sprintf(yyval.s,"$%d",v);
      				if (yypvt[-2].s[0]=='$')
      				{
      					strcpy(yypvt[-2].s,yypvt[-2].s+1);
      					v=atoi(yypvt[-2].s);
      					if (v>nvar) scoatevaraux(v);
      				}
      				if (yypvt[-0].s[0]=='$')
      				{
      					strcpy(yypvt[-0].s,yypvt[-0].s+1);
      					v=atoi(yypvt[-0].s);
      					if (v>nvar) scoatevaraux(v);
      				}
      				free(yypvt[-2].s); free(yypvt[-0].s);
      			} break;
      case 11:
# line 125 "comp.y"
      {
      				int v;
       				yyval.s=(char *)malloc(20);
      				if (yypvt[-0].s[0]=='$')
      				{
      					v=varauxnoua();
      					fprintf(fisout,"\tsub\t$%d,$0,%s\n",v,yypvt[-0].s);
      					sprintf(yyval.s,"$%d",v);
      					strcpy(yypvt[-0].s,yypvt[-0].s+1);
      					v=atoi(yypvt[-0].s);
      					if (v>nvar) scoatevaraux(v);
      				}
      				else sprintf(yyval.s,"%d",-atoi(yypvt[-0].s));
      				free(yypvt[-0].s);
      			} break;
      case 12:
# line 140 "comp.y"
      { yyval.s=yypvt[-1].s; } break;    }
    goto enstack;
}
