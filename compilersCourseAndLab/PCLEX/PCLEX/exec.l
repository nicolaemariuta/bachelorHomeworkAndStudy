%{
unsigned nchar = 0; /* # of characters */
unsigned nword = 0; /* # of words */
unsigned nline = 0; /* # of lines */
%}

%%
\n              nchar += 2; ++nline;

[^ \t\n]+       ++nword;  nchar += yyleng;
.               ++nchar;

%%

main()
{
  yylex();
  printf( "%d\t%d\t%d\n", nchar, nword, nline );
  exit(0);
}
