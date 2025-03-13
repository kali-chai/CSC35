.intel_syntax noprefix
.section .data
    String1:
        .asciz "12345"

    String2:
        .asciz "67052"

    String3:
        .asciz "AB815"

    String4:
        .asciz "ABFRF"

    String5:
        .asciz "ABFRF"
    
    String6:
        .asciz "KFNAY"

    String7:
        .asciz "UHANFBYF"

.section .bss
    .comm input, 1024
    .comm intoutput, 64

.section .text
.global _start
_start:
    lea rsi, String3
    call IsStringInteger
    mov r14, r15
    call PrintInteger
    lea rsi, String7
    lea rdi, String6
    call CheckEqualStrings
    mov r14, r15
    call PrintInteger
        mov rax, 60
        xor rdi, rdi
    End:
        syscall

StringLength:
        .StringLengthTop:
            xor rax, rax
        .StringLengthIter:
            cmp byte ptr [rsi + rax], 0
            je .StringLengthOut
            inc rax
            jmp .StringLengthIter
        .StringLengthOut:
            ret


        ParseInt:
        .ParseIntTop:
            call StringLength
            xor r8, r8
            xor r14, r14
            dec r8
        .ParseIntBody:
            inc r8
            cmp r8, rax
            jge .ParseIntOut
            movzx r13, byte ptr [rsi + r8]
            sub r13, 48
            imul r14, 10
            add r14, r13
            jmp .ParseIntBody
        .ParseIntOut:
            ret

        PrintInteger:
        .PrintIntegerTop:
            xor r13, r13
            mov rax, r14
            mov rdx, 10
            mov r10, 10
            lea rsi, [intoutput]
        .PrintIntegerBody:
            push rdx
            xor rdx, rdx
            idiv r10
            add dl, 48
            cmp rax, 0
            jne .PrintIntegerBody
        .PrintIntegerWrite:
            mov byte ptr [rsi], dl
            inc rsi
            pop rdx
            cmp rdx, 10
            jne .PrintIntegerWrite
        .PrintIntegerOut:
            lea rsi, [intoutput]
            call PrintString
            xor r14, r14
            ret

        PrintString:
        .PrintStringTop:
            push rax
            call StringLength
            mov rdx, rax
            mov rax, 1
            mov rdi, 1
            syscall
            pop rax
            ret

IsStringInteger:
        .IsStringIntegerTop:
            xor r8, r8
        .IsStringIntegerBody:
            movzx rax, byte ptr [rsi + r8]
            cmp rax, 0
            je .IsStringIntegerVal
            cmp rax, 48
            jb .IsStringIntegerInv
            cmp rax, 57
            ja .IsStringIntegerInv
            inc r8
            jmp .IsStringIntegerBody
        .IsStringIntegerInv:
            mov r15, 0
            jmp .IsStringIntegerOut
        .IsStringIntegerVal:
            mov r15, 1
            jmp .IsStringIntegerOut
        .IsStringIntegerOut:
            ret

    CheckEqualStrings:
        .CheckEqualStringsTop:
            push rdx
            push r8
            push r9
            xor r8, r8
        .CheckEqualStringsBody:
            movzx r9, byte ptr [rsi + r8]
            movzx r10, byte ptr [rdi + r8]
            cmp r9, r10
            jne .CheckEqualStringsNotEqual
            cmp byte ptr [rsi + r8], 0
            je .CheckEqualStringsEqual
            inc r8
            jmp .CheckEqualStringsBody
        .CheckEqualStringsNotEqual:
            mov r15, 0
            jmp .CheckEqualStringsOut
        .CheckEqualStringsEqual:
            mov r15, 1
            jmp .CheckEqualStringsOut
        .CheckEqualStringsOut:
            pop r9
            pop r8
            pop rdx
            ret