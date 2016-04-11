%{

%}
%%
(aa)*(b+a*)*		fprintf(f,"acceptat");
11+(0|1|2)*22+		fprintf(f,"acceptat");
a[0-9A-Za-z]*		fprintf(f,"identificator");

[^\b\t]	fprintf(f,yytext);

%%
void main()
{

  yylex();
    
}
