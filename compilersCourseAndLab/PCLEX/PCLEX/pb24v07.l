%{
static FILE *f;
%}
%%
\/\/.*		fprintf(f,"\n");
(\n)\*.*	fprintf(f,"\n");
\/\*.*		fprintf(f,"\n");
\/\*(\n)*.*\n*\*\/\n	fprintf(f,"\n");
[^\b\t]	fprintf(f,yytext);

%%
void main()
{
  f=fopen("faracomentarii.txt","w"); 
  yylex();
  fclose(f);     
}

