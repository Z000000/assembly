assume cs:code,ds:data
data segment
	db "dfd"
data ends
code segment

   mov ax,1
   mov cx,3
   call s
   mov bx,ax
   mov ax,4CH
   int 21H
 
s:add ax,ax
  loop s
  ret
   
  
code ends
end