%{
#include <stdio.h>
#include <ctype.h>

#define YYSTYPE int    /* data type of yacc stack */
%}

%token NUMBER,QUIT

%left '+' '-'       /* left associative, same precedence */
%left '*' '/' '%'   /* left associative, higher precedence */
%left UNARYMINUS

%%

linie:   /* nothing */
         { prompt(); }
       | linie '\n'
         { prompt(); }
       | linie expr '\n'
         {
             printf("= %d\n", $2);
             prompt();
         }
       ;

expr:    NUMBER              { $$ = $1; }
       | QUIT	             { return 0; }
       | expr '+' expr       { $$ = $1 + $3; }
       | expr '-' expr       { $$ = $1 - $3; }
       | expr '*' expr       { $$ = $1 * $3; }
       | expr '/' expr       { $$ = $1 / $3; }
       | expr '%' expr       { $$ = $1 % $3; }
       | '-' expr            { $$ = - $2; }
       | '(' expr ')'        { $$ = $2; }
       ;

%%

main()
{
     clrscr();
     printf("Evaluator de expresii aritmetice cu numere intregi\n\n");
     yyparse();
     printf("\nExecutie program incheiata cu succes\n");
}

int yyerror(char *s)
{
	printf(s);
}

prompt()
{

  printf("Expresie: ");
}
