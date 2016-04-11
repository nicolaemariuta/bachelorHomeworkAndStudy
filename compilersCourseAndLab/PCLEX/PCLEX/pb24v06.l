%{
static FILE *f;
%}
%%

/\*(^*|\n|(\*+(^*/|\n)))*\*	fprintf(f,"\n");
[^\b\t]	fprintf(f,yytext);

%%
void main()
{
  f=fopen("faracomentarii.txt","w"); 
  yylex();
  fclose(f);     
}

