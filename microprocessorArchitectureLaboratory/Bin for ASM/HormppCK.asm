code segment
assume cs:code,ds:code
org 100h
start:  mov ax,cs 
        mov ds,ax

aici:  

        mov dx,379h
        in al, dx
        cmp al,0bfh
        jnz iesi 
 
        mov al,44h
        mov dx, 0378h
        out dx, al
        call delay

        mov dx,379h
        in al, dx
        cmp al,0bfh
        jnz iesi   
   
        mov al,22h
        mov dx, 0378h
        out dx, al
        call delay

        mov dx,379h
        in al, dx
        cmp al,0bfh
        jnz iesi

        mov al,88h
        mov dx, 0378h
        out dx, al
        call delay

        mov dx,379h
        in al, dx
        cmp al,0bfh
        jnz iesi
 
        mov al,11h
        mov dx, 0378h
        out dx, al
        call delay

       

       jmp aici

iesi:	mov ah,4ch
	int 21h

delay:  mov cx,0ffffh
del1:   mov bh,0ffh
del2:   dec bh
	jnz del2
	dec cx
	jnz del1
	ret	

code ends
end start