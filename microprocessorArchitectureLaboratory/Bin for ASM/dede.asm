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
		jg citire2
citire2:
		mov bh,1h
		int 21h
		mov cl,bl
		sub cl,'0'
		cmp cl,0
		jg suma
suma:		
		add bh,ah
		mov ah,2
		mov dl,bh
		add dl, '0'
		int 21h
		code ends
	 end start 
