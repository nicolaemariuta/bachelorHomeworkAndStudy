%{ 
int characters=0;
int words=0;
int lines=0;
%}
%%
\n	{
		++lines;
		++ characters;
	}
[\t]+	characters+=yyleng;
[^\t\n]+	{
			++words;
			characters+=yyleng;
		}
%%