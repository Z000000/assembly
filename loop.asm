
ASSUME CS:CODES
CODES SEGMENT
    DW 0123h,123h
START:

    MOV AX,0
    MOV BX,0
    MOV CX,2
 s: ADD AX,CS:[BX]
    ADD BX,2
    loop s
    
    MOV ax,4CH
    INT 21H
CODES ENDS
END START