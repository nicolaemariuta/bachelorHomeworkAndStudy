%%
[a-z] {putchar(toupper(yytext[0]));}
%%
main()
{
yylex();
}