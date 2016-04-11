%{
static int nr=0;
%}
%%
(^0|11)*11 	{printf("cuvant acceptat: %s\n",yytext); nr++;}
[^ \t\n]+	;
.	;
\n	;
%%
void main()
{
  yylex();
  printf("nr de cuv acceptate: %d\n",nr);
}