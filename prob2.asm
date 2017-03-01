;copy  a set of 10 bytes from memory location loc1 to memory location loc2 in the reverse order
; (c) Tushar Tripathi

.model tiny
.data
loc1  db 'abcdefghij'
loc2  db 10 DUP(?)
count dw 10
.code
.startup
    mov cx, count
    mov bl, 0
    lea si, loc1
    lea di, loc2
    lea di, [di + 9]    ; alternative add di, 9
    transfer:
        mov al, [si]
        mov BYTE PTR [di], al
        INC si
        DEC di
        loop transfer
.exit
end
