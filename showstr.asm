assume ds:data,cs:code
data segment
	str db "yoduddd"
data ends
code segment
START:	mov ax,data
	mov ds,ax
	mov cx,6
	lea si, str;mov si,0
d:  mov dl,[si]
    call s
    inc si 
    loop d
    mov ah,4ch
    int 21h
	
	
	call s
s proc
    push ax 
    mov ah,02h;key break
    int 21h
    pop ax
    ret
s endp
	
code ends
end start