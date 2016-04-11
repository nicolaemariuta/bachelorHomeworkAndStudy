/* 
 * YACCPAR.C - PCYACC LR parser driver routine for use with improved errorlib
 *
 *	(c) Copyright 1989, Abraxas Software, Inc.
*/

#include "errorlib.h"

#define yyerrok		errfl = 0
#define yyclearin	if (token == 0) return 1; else token = -1
#define YYFLAG -1000
#define YYERROR goto yyerrlab
#define YYACCEPT return(0)
#define YYABORT return(1)

#ifndef YYMAXDEPTH
#define YYMAXDEPTH	100
#endif

YYSTYPE yyv[YYMAXDEPTH];
int token = -1; /* input token */
int errct = 0;  /* error count */
int errfl = 0;  /* error flag */


int yyparse(void)
{
     int yys[YYMAXDEPTH];
     int yyj, yym;
     YYSTYPE *yypvt;
     int yystate, *yyps, yyn;
     YYSTYPE *yypv;
     int *yyxi;

#ifdef YYDEBUG
     printf("state 0\n");
#endif
     yystate = 0;
     token = -1;
     errct = 0;
     errfl = 0;
     yyps = yys - 1;
     yypv = yyv - 1;

yystack:    /* put a state and value onto the stack */
     if ( ++yyps > yys + YYMAXDEPTH ) {
       yyerror( "yacc stack overflow", 0 );
       return(1);
     }
     *yyps = yystate;
     ++yypv;
     *yypv = yyval;

yynewstate:
     yyn = yypact[yystate];

     if ( yyn <= YYFLAG )
	  goto yydefault; /* simple state with only default action */

     if ( token < 0 ) {		/* no lookahead token? */
	  if ( (token = yylex()) < 0 )
	       token = 0;
     }
     yyn += token;
     if ( yyn < 0 || yyn >= YYLAST )	/* no entry within table? */
	  goto yydefault;	/* simple state with only default action */

     if ( yychk[yyn = yyact[yyn]] == token ) {	/* valid shift? */
#ifdef YYDEBUG
	  printf("shift on [%s] to state %d\n", yydisplay(token), yyn);
#endif
	  token = -1;		/* lookahead token is read */
	  yyval = yylval;
	  yystate = yyn;
	  if ( errfl > 0 )	/* still in error state? */
	       --errfl;
	  goto yystack;
     }

yydefault:	/* simple state with only default action */
     if ( (yyn = yydef[yystate]) == -2 ) {
	  if ( token < 0 ) {	/* no lookahead token? */
	       if ( (token = yylex()) < 0 )
		    token = 0;
	  }

          /* look through exception table */
          for ( yyxi = yyexca; *yyxi != -1 || yyxi[1] != yystate ; yyxi += 2 )
	       ;		/* VOID */
          while( *(yyxi += 2) >= 0 ) {
	       if ( *yyxi == token )
	            break;
          }
          if ( (yyn = yyxi[1]) < 0 ) {
#ifdef YYDEBUG
	       printf("accept\n");
#endif
	       return 0;   /* accept */
	  }
     }

     if ( yyn == 0 ) {		/* error? */
	  switch( errfl ) {
	       case 0:   /* brand new error */
		    yyerror( "syntax error", yydisplay( token ));
		    if ( (yyn = yypact[yystate]) > YYFLAG && yyn < YYLAST) {
			 register int x;

			 for ( x = (yyn > 0) ? yyn : 0; x < YYLAST; ++x ) {
			      if ( yychk[yyact[x]] == x - yyn &&
					x - yyn != YYERRCODE )
				   yyerror( 0, yydisplay( x - yyn ));
			 }
		    }
		    yyerror( 0, 0 );
yyerrlab:
		    ++errct;

	  case 1:
	  case 2: /* incompletely recovered error ... try again */
		    errfl = 3;

		    /* find a state where "error" is a legal shift action */
		    while ( yyps >= yys ) {
			 yyn = yypact[*yyps] + YYERRCODE;
			 if ( yyn >= 0 && yyn < YYLAST &&
					yychk[yyact[yyn]] == YYERRCODE ){
			      /* simulate a shift of "error" */
			      yystate = yyact[yyn];
#ifdef YYDEBUG
			      printf("shift on [error] to state %d\n",
				    yystate);
#endif
			      goto yystack;
			 }
		         yyn = yypact[*yyps];
			 /* the current yyps has no shift on "error",
				pop stack */
			 --yyps;
			 --yypv;
#ifdef YYDEBUG
			printf("error: pop state %d, uncovering state %d\n",
			      yyps[1], yyps[0]);
#endif
		    }

	    /* there is no state on the stack with an error shift ... abort */
yyabort:

#ifdef YYDEBUG
		    printf("abort\n");
#endif
		    return 1;

	       case 3:  /* no shift yet; clobber input char */
#ifdef YYDEBUG
		    printf("error: discard [%s]\n", yydisplay(token));
#endif
		    if ( token == 0 )	/* EOF? */
			 goto yyabort;		/* don't discard EOF, quit */
		    token = -1;
		    goto yynewstate;   /* try again in the same state */
	  }
     }

     /* reduction by production yyn */
     yyps -= yyr2[yyn];
     yypvt = yypv;
     yypv -= yyr2[yyn];
     yyval = yypv[1];
     yym = yyn;
     /* consult goto table to find next state */
     yyn = yyr1[yyn];
     yyj = yypgo[yyn] + *yyps + 1;
     if ( yyj >= YYLAST || yychk[yystate = yyact[yyj]] != -yyn )
	  yystate = yyact[yypgo[yyn]];
#ifdef YYDEBUG
     printf("reduce w/ rule %d, uncover state %d, go to state %d\n", yym,
	  *yyps, yystate);
#endif
     switch (yym) {
	  $A
     }
     goto yystack;  /* stack new state and value */
}
