

ASSUME CS:CODES,ds:data
data segment
	db "HHdfdfd"
	db "ADdfdB"
data ends

CODES SEGMENT
    
START:

  
    mov ax,data
    mov ds,ax
    
    MOV BX,0
    MOV CX,7
 s: mov al,[bx]
    and al,11011111B
    mov [bx],al
    inc bx
    loop s
    add bx,2
    loop s
    
    mov bx,7
    mov cx,6
 s1:mov al,[bx]
    or al,00100000B
    mov [bx],al
    inc bx
    loop s1
  
    
    MOV ax,4CH
    INT 21H
CODES ENDS
END START