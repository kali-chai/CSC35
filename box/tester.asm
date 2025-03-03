.intel_syntax noprefix 
.section .data
    String1:
        .asciz "12345"

    String2:
        .asciz "67052"

    ExpectingInput:
        .asciz "> "
    BufferOverflow:
        .asciz "That input is too large! Press any key to retry.\n"

.section .bss
        .comm input, 1024
        .comm intoutput, 64

.section .text
    .global _start

    _start:
        lea rsi, String2
        call ParseInt
        call PrintInteger
        lea rsi, input
        call ReadString
        call IsStringInteger
        mov r14, r15
        call PrintInteger
        mov rax, 60
        xor rdi, rdi
    End:
        syscall


            ReadString:
        .ReadStringTop:
            call DestroyBuffer
            lea rsi, ExpectingInput
            call PrintString
            mov rax, 0
            mov rdi, 0
            lea rsi, [input]
            mov rdx, 1023
            syscall
            cmp rax, 1022
            jg .ReadStringOverflow
            dec rax
            mov byte ptr [input + rax], 0
            jmp .ReadStringOut
        .ReadStringOverflow:
            call FlushSTDIN
            lea rsi, BufferOverflow
            call PrintString
            jmp .ReadStringTop
        .ReadStringOut:
            ret

        FlushSTDIN:
        .FlushSTDINTop:
            push rax
            push rdi
            push rsi
            push rdx
        .FlushSTDINIter:
            mov rax, 0
            mov rdi, 0
            lea rsi, [input]
            mov rdx, 1
            syscall
            cmp rax, 0
            je .FlushSTDINOut
            cmp byte ptr [input], 10
            jne .FlushSTDINIter
        .FlushSTDINOut:
            pop rdx
            pop rsi
            pop rdi
            pop rax
            ret

        DestroyBuffer:
        .DestroyBufferTop:
            push rax
            push rcx
            push rdi
            mov rcx, 1024
            xor rax, rax
            lea rdi, [input]
            rep stosb
            pop rdi
            pop rcx
            pop rax
            ret

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
            mov rax, [rsi + r8]
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
