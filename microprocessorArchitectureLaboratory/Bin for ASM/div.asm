code segment
assume cs:code, ds:code
start:	mov ax,code
	mov ds,ax

	mov ah,1h
	int 21h
	mov cl,al
	sub cl,'0'
	mov al,cl
	mov cl, 10
	mul cl
	mov ch,al
	mov al,0
	mov ah,1h
	int 21h
	mov cl,al
	sub cl,'0'
	add ch,cl
	mov al,ch
	mov ah,0
	mov cl,5
	div cl
	mov cl,ah
	cmp cl,0
	;mov al,0
	jne ndiv
	jmp dvd

dvd:	mov dl,1
	add dl,'0'
	jmp afisare
ndiv:	mov dl,0
	add dl,'0'
	jmp afisare

afisare:	mov ah,2
		int 21h
		jmp final
	

final: 	mov ah,4ch
	int 21h
	code ends
	end start