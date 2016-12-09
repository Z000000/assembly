ASSUME CS:CODES,ds:data
data segment
	str db "HHdfdfd"
data ends

CODES SEGMENT
    
START:

  
    mov ax,data
    mov ds,ax
    
    MOV bx,0
    MOV CX,7
 s: mov al,[bx]
    and al,11011111B
    mov dl,al
    call d
    inc bx
    loop s
    MOV ah,4CH
    INT 21H
 d proc
    mov ah,02h
    int 21h
    ret
 d endp
  
    
 
CODES ENDS
END START