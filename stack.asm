

ASSUME CS:CODES,ds:data,ss:stack
data segment
	dw 0123h,123h
data ends
stack segment
	dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
stack ends
CODES SEGMENT
    
START:

    MOV AX,stack
    mov ss,ax
    mov sp,20h
    mov ax,data
    mov ds,ax
    
    MOV BX,0
    MOV CX,2
 s: push [bx]
    add bx,2
    loop s
    mov bx,0
    mov cx,2
 s1:pop [bx]
    add bx,2
    loop s1
  
    
    MOV ax,4CH
    INT 21H
CODES ENDS
END START