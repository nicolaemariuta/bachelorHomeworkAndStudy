TASM Z80 assembler
-------------------

Apelare:

	tasm -80 -x <asm_file> <hex_file>

<asm_file> = input file
<hex_file> = output file

Ex:
	tasm -80 -x clock.asm clock.hex



Constante
-----------

binar: prefix '%' sau sufix 'b', 'B': %0110101, 011010b, 1001010010B
octal: prefix '@' sau sufix 'o', 'O': @177400, 17740o, 17740O
zecimal: sufix 'd', 'D': 123, 1980
hexa: prefix '$' sau sufix 'h', 'H': $1234, 1234h, 0FFH
		ATENTIE!!! - pentru constante hexa care incep cu o litera (AAh, ABh, FAh, FFh...)
		se adauga un ZERO in fata pentru a evita confundarea acesteia cu un identificator.
		Ex. 0FFh, 0A3h
text: "Acesta este o constanta de tip text\n"



Escape characters
------------------
        Sequence       Description
        ___________________________________________________________
        \n             Line Feed
        \r             Carriage return
        \b             Backspace
        \t             Tab
        \f             Formfeed
        \\             Backslash
        \"             Quote
        \000           Octal value of character


Caractere speciale:
	$ = adresa curenta
Ex. jmp $ + 10		;salt la adresa curenta + 10 
    jmp $		;bucla infinita



Directive de asamblare
------------------------


.BYTE <expr> (.DB <expr>)
		- asambleaza o valoare de 8 biti (1 byte) la locatia curenta.
		Se foloste pentru a defini constante de 8 biti.
		Ex: 
		
		label0: .BYTE 123
		label1: .BYTE 0FAh

.WORD <expr> (.DW <expr>)
		- asambleaza o valoare de 8 biti (1 byte) la locatia curenta.
		Se foloste pentru a defini constante de 8 biti.
		Ex: 
	
		label0: .WORD 12331
		label1: .WORD 1323h


.TEXT <text expr>
		- asambleaza un text ascii cincepand de la adresa curenta

		Ex.
		text0: .TEXT "Salut"


.ORG <expr>
		- avanseaza contorul locatiei curente la o noua valoare
		Ex.
			.ORG 1800h
			.ORG $+16	; adauga 16 la contorul locatiei curente

.EQU		asigneaza o valoare unui simbol

		Ex:
		simbol .EQU 1234h



