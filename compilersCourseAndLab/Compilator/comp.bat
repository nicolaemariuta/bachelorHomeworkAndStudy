"c:\Diverse\Limbaje formale si compilatoare\Lex+Yacc\PCLEX\pclex.exe" lexcomp.l
pause
"c:\Diverse\Limbaje formale si compilatoare\Lex+Yacc\yacc\01\pcyacc.exe" -d comp.y
pause
cls
c:\Limbaje formale si compilatoare\Bc\bc.exe /b to_mips.prj
pause
