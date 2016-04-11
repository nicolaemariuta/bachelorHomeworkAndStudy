%{
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

typedef union
{
	int i;
	char *s;
} tipst;

#define YYSTYPE tipst

int linie = 1;
int nvar = 1;
int nvaraux = 0;
int varaux[32];
char denvar[32][20];
FILE *fin, *fout;

%}

%token NUMBER, WORD
%left '+' '-'
%left '*' '/'
%left UNARYMINUS

%%

linie:
	| linie '\n'		{linie++;}
	| linie instr '\n'	{linie++;}
	;

instr: WORD '=' expr ';'
	{
		int v;
		if ($3.s[0] == '$')
		{
			fprintf(fout,"\tmove\t$%d, %s\n\n", variable($1.s), $3.s);
			strcpy($3.s,$3.s+1);
			v = atoi($3.s);
			if (v > nvar)
				varauxdel(v);
		}
		else
			fprintf(fout,"\taddi\t$%d, $0, %s\n\n", variable($1.s), $3.s);

		free($1.s);
		free($3.s);
	}
	;

expr:	NUMBER
	{
		$$.s = (char *)malloc(20);
		sprintf($$.s, "%d", $1.i);
	}
	| WORD
	{
		$$.s = (char *)malloc(20);
		sprintf($$.s, "$%d", variable($1.s));
		free($1.s);
	}
	| expr '+' expr
	{
				
		int v;
		if ($1.s[0] == '$' || $3.s[0] == '$')
			v = varauxnew();
		$$.s = (char *)malloc(20);
		if ($1.s[0] == '$' && $3.s[0] != '$')
			fprintf(fout, "\taddi\t$%d, %s, %s\n", v, $1.s, $3.s);
		if ($1.s[0] == '$' && $3.s[0] == '$')
			fprintf(fout, "\tadd\t$%d, %s, %s\n", v, $1.s, $3.s);
		if ($1.s[0] != '$' && $3.s[0] == '$')
			fprintf(fout, "\taddi\t$%d, %s, %s\n", v, $3.s, $1.s);
		if ($1.s[0] != '$' && $3.s[0] != '$')
			sprintf($$.s, "%d", atoi($1.s) + atoi($3.s));
		else
			sprintf($$.s, "$%d", v);
		if ($1.s[0] == '$')
		{
			strcpy($1.s, $1.s + 1);
			v = atoi($1.s);
			if (v > nvar)
				varauxdel(v);
		}
		if ($3.s[0] == '$')
		{
			strcpy($3.s, $3.s + 1);
			v = atoi($3.s);
			if (v > nvar)
				varauxdel(v);
		}
		free($1.s);
		free($3.s);
	}
	| expr '-' expr
	{
				
		int v;
		if ($1.s[0] == '$' || $3.s[0] == '$')
			v = varauxnew();
		$$.s = (char *)malloc(20);
		if ($1.s[0] == '$' && $3.s[0] != '$')
		{
			int im;
			im = varauxnew();
			fprintf(fout, "\taddi\t$%d, $0, %s\n", im, $3.s);
			fprintf(fout, "\tsub\t$%d, %s, $%d\n", v, $1.s, im);
			varauxdel(im);
		}
		if ($1.s[0] == '$' && $3.s[0] == '$')
			fprintf(fout, "\tsub\t$%d, %s, %s\n", v, $1.s, $3.s);
		if ($1.s[0] != '$' && $3.s[0] == '$')
		{
			int im;
			im = varauxnew();
			fprintf(fout, "\taddi\t$%d, $0, %s\n", im, $1.s);
			fprintf(fout, "\tsub\t$%d, $%d, %s\n", v, im, $3.s);
			varauxdel(im);
		}
		if ($1.s[0] != '$' && $3.s[0] != '$')
			sprintf($$.s, "%d", atoi($1.s) - atoi($3.s));
		else
			sprintf($$.s, "$%d", v);
		if ($1.s[0] == '$')
		{
			strcpy($1.s, $1.s + 1);
			v = atoi($1.s);
			if (v > nvar)
				varauxdel(v);
		}
		if ($3.s[0] == '$')
		{
			strcpy($3.s, $3.s + 1);
			v = atoi($3.s);
			if (v > nvar)
				varauxdel(v);
		}
		free($1.s);
		free($3.s);
	}
	| expr '*' expr
	{
				
		int v;
		if ($1.s[0] == '$' || $3.s[0] == '$')
			v = varauxnew();
		$$.s = (char *)malloc(20);
		if ($1.s[0] == '$' && $3.s[0] != '$')
		{
			int im;
			im = varauxnew();
			fprintf(fout, "\taddi\t$%d, $0, %s\n", im, $3.s);
			fprintf(fout, "\tmul\t$%d, %s, $%d\n", v, $1.s, im);
			varauxdel(im);
		}
		if ($1.s[0] == '$' && $3.s[0] == '$')
			fprintf(fout, "\tmul\t$%d, %s, %s\n", v, $1.s, $3.s);
		if ($1.s[0] != '$' && $3.s[0] == '$')
		{
			int im;
			im = varauxnew();
			fprintf(fout, "\taddi\t$%d, $0, %s\n", im, $1.s);
			fprintf(fout, "\tmul\t$%d, $%d, %s\n", v, im, $3.s);
			varauxdel(im);
		}
		if ($1.s[0] != '$' && $3.s[0] != '$')
			sprintf($$.s, "%d", atoi($1.s) * atoi($3.s));
		else
			sprintf($$.s, "$%d", v);
		if ($1.s[0] == '$')
		{
			strcpy($1.s, $1.s + 1);
			v = atoi($1.s);
			if (v > nvar)
				varauxdel(v);
		}
		if ($3.s[0] == '$')
		{
			strcpy($3.s, $3.s + 1);
			v = atoi($3.s);
			if (v > nvar)
				varauxdel(v);
		}
		free($1.s);
		free($3.s);
	}
	| expr '/' expr
	{
				
		int v;
		if ($1.s[0] == '$' || $3.s[0] == '$')
			v = varauxnew();
		$$.s = (char *)malloc(20);
		if ($1.s[0] == '$' && $3.s[0] != '$')
		{
			int im;
			im = varauxnew();
			fprintf(fout, "\taddi\t$%d, $0, %s\n", im, $3.s);
			fprintf(fout, "\tdiv\t$%d, %s, $%d\n", v, $1.s, im);
			varauxdel(im);
		}
		if ($1.s[0] == '$' && $3.s[0] == '$')
			fprintf(fout, "\tdiv\t$%d, %s, %s\n", v, $1.s, $3.s);
		if ($1.s[0] != '$' && $3.s[0] == '$')
		{
			int im;
			im = varauxnew();
			fprintf(fout, "\taddi\t$%d, $0, %s\n", im, $1.s);
			fprintf(fout, "\tdiv\t$%d, $%d, %s\n", v, im, $3.s);
			varauxdel(im);
		}
		if ($1.s[0] != '$' && $3.s[0] != '$')
			sprintf($$.s, "%d", atoi($1.s) / atoi($3.s));
		else
			sprintf($$.s, "$%d", v);
		if ($1.s[0] == '$')
		{
			strcpy($1.s, $1.s + 1);
			v = atoi($1.s);
			if (v > nvar)
				varauxdel(v);
		}
		if ($3.s[0] == '$')
		{
			strcpy($3.s, $3.s + 1);
			v = atoi($3.s);
			if (v > nvar)
				varauxdel(v);
		}
		free($1.s);
		free($3.s);
	}
	| '-' expr %prec UNARYMINUS
	{
		int v = varauxnew();
		$$.s = (char *)malloc(20);
		if ($2.s[0] == '$')
		{
			fprintf(fout, "\tsub\t$%d,$0,%s\n", v, $2.s);
			sprintf($$.s,"$%d",v);
			strcpy($2.s, $2.s + 1);
			v = atoi($2.s);
			if (v > nvar)
				varauxdel(v);
		}
		else
		{
			sprintf($$.s, "%d", -atoi($2.s));
			varauxdel(v);
		}
		free($2.s);
	}
	| '(' expr ')'
	{
		$$.s = $2.s;
	}
	;

%%

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

void main (int narg, char *argv[])
{
	int i;
	if (narg != 3)
		init(NULL, NULL, &fin, &fout);
	else
		init(argv[1], argv[2], &fin, &fout);
	
	for (i = 0; i < 32; i++)
		varaux[i] = 0;
	yyparse();
}

void yyerror (char *s)
{
	printf("Error line %d: %s\n", linie, s);
	getch();
	exit(1);
}

int varauxnew ()
{
	int v;
	if (nvar + nvaraux >= 31)
	{
		yyerror("Nu mai exista registri liberi.");
	}

	v=31;
	while (v > 0)
	{
		if (!varaux[v])
			break;
		v--;
	}
	varaux[v] = 1;
	nvaraux++;
	return v;
}

void varauxdel (int v)
{
	varaux[v] = 0;
	nvaraux--;
}

int variable (char *s)
{
	int i;
	for (i = 1; i < nvar; i++)
		if (!strcmp(s, denvar[i]))
			return i;
	if (nvar + nvaraux >= 31)
		yyerror("Nu mai exista registri liberi.");
	strcpy(denvar[nvar++], s);
	return nvar - 1;
}
	
