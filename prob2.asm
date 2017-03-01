;Write an ALP that will examine a set of 26 memory locations that have alphabets and count the
;number  of  vowels.  The  alphabets  are  store  from  memory  location
;alph1 and  the  count  of  the vowels must be stored in location vcnt .
; (c) Tushar Tripathi

.model tiny
.data
dat1 db 'aAtuyseEghuUplmnIioOhjkluU'
count db 26
vcnt db 0
.code
.startup
    mov cl, count
    mov bl, 0
    lea si, dat1
    check:
        MOV al, BYTE PTR [si]
        cmp al, 'a'
        JE vowel
        cmp BYTE PTR [si], 'A'
        JE vowel
        cmp BYTE PTR [si], 'e'
        JE vowel
        cmp BYTE PTR [si], 'E'
        JE vowel
        cmp BYTE PTR [si], 'i'
        JE vowel
        cmp BYTE PTR [si], 'I'
        JE vowel
        cmp BYTE PTR [si], 'o'
        JE vowel
        cmp BYTE PTR [si], 'O'
        JE vowel
        cmp BYTE PTR [si], 'u'
        JE vowel
        cmp BYTE PTR [si], 'U'
        JE vowel
        INC si
        loop check
    vowel:
        INC bl
        INC si
        cmp cl, 0
        je out2
        loop check
    out2:
        NOP
    mov [vcnt], bl
.exit
end
