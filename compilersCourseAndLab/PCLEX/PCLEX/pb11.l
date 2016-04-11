%{
static int nr=0;
%}
%%
(0|1)*01	{printf("cuvant acceptat: %s\n",yytext); nr++;}
[^ \t\n]+	;
.	;
\n	;
%%
void main()
{
  yylex();
  printf("nr de cuv acceptate: %d\n",nr);
}