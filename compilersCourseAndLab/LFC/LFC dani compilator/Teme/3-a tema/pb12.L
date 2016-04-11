%{
static int nr=0;
%}
%%
(1)*0 	{printf("cuvant acceptat: %s\n",yytext); nr++;}
[^ \t\n]+	;
.	;
\n	;
%%
void main()
{
  yylex();
  printf("nr de cuv acceptate: %d\n",nr);
}