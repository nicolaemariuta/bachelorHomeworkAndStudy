code segment
assume cs:code,ds:code

start:mov ax,cs
      mov ds,ax

      mov al,10001010b	
      mov dx,213h
      out dx,al

      mov al,48      
      mov dx,210h
      out dx,al                
      
      mov al,0
      mov dx,211h
      out dx,al

      mov al,00001010b
      mov dx,213h
      out dx,al
 
b1:   mov al,'M'
      mov dx,210h
      out dx,al
b2:   mov dx,215h
      in al,dx
      and al,00100000b
      jz b2
	     

final:mov ah,1
      int 16h
      jz b1
	mov ah,4ch
	int 21h

code ends
end start