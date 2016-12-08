

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
    mov al,[bx+5]
    or al,00100000B
    mov [5+bx],al
    inc bx
    loop s
  
    MOV ax,4CH
    INT 21H
CODES ENDS
END START