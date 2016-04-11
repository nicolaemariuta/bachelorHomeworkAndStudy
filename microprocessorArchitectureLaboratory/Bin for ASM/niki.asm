code segment
assume cs:code, ds:code
start:
	mov ax,code
	mov ds,ax
		mov ah,1h
		int 21h
		mov cl,al
		sub cl,'0'
		cmp cl,0
		jg suma
		jmp final
		
suma:	mov al,0
bucla:	add al,cl
	dec cl
	cmp cl,0
	jg bucla

	mov cl,10
	mov ah,0
	div cl
	mov bh,ah
	mov bl,al
	mov ah,2
	mov dl,bl
	add dl,'0'
	int 21h
	mov ah,2
	mov dl,bh
	add dl, '0'
	int 21h
final:	mov ah,4ch
	int 21h
	code ends
	end start 
