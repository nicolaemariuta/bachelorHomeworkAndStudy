/*
=====================================================================
  MAIN.C: main routine for ANSIC parser
  Verion 1.1
  By Xing Liu; revisions by Jeff Taylor
  Copyright(c) Abraxas Software Inc. (R), 1988-1989, All rights reserved

=====================================================================
*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "errorlib.h"
#include "global.h"


main(argc, argv)
int   argc;
char *argv[];
{
  if (argc < 2) {
    fprintf(stderr, "Usage: ansic <program>\n");
    exit(1);
  }
  
  yyin = fopen(argv[1], "r");
  if (yyin == NULL) {
    fprintf(stderr, "Can't open %s file\n", argv[1]);
    exit(1);
  }
  strcpy(yyerrsrc, argv[1]);

  yylineno = 1;

  (void) yyparse();
  fclose(yyin);

  if (errct != 0) {
    fprintf(stderr, "%d error%s found by the parser\n", errct,
	  (errct == 1) ? "" : "s");
    exit(1);
  }

  fprintf(stderr, "No syntax errors were found by the parser\n");
  exit(0);
}
