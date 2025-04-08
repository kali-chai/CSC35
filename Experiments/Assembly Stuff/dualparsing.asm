.intel_syntax noprefix

.section .data
    ExpectingInput:
    .asciz "> "

.section .bss
    .comm input, 1024
    .comm intoutput, 64
    .comm output, 1024

.section .text
    .global _start

    _start:
        call ReadString
        call AttemptStringInt
        mov rax, 60
        xor rdi, rdi
        syscall

    PrintString:
        0:
            push  rdi
            push  rdx
            push  rax
        1:
            call  GetStringLength
            mov   rdx, rax
            mov   rax, 1
            mov   rdi, 1
            syscall
        2:
            pop   rax
            pop   rdx
            pop   rdi
            ret

    PrintInteger:
        # Stack frame and register setup
        0:
            push  rax
            push  rdx
            push  rsi
            push  r10
            push  rcx
            push  rbx
            xor   rbx, rbx 
            xor   rcx, rcx
            lea   rsi, [intoutput]
            mov   rax, r14
        # Checks if the number is negative, set rbx as flag
        1:
            test  rax, rax
            jns   2f
            mov   rbx, 1
            neg   rax
        # Uses modulo 10 to push all digits as ASCII to stack
        2:
            mov   rdx, 0
            mov   r10, 10
            div   r10
            add   dl,  '0'
            push  rdx
            inc   rcx
            test  rax, rax
            jnz   2b
        # Uses rbx flag to add '-' if number is negative
        3:
            test  rbx, rbx
            jz    4f
            mov   byte ptr [rsi], '-'
            inc   rsi
        # Pops all digits from stack and writes them to intoutput
        4:
            pop   rdx
            mov   byte ptr [rsi], dl
            inc   rsi
            dec   rcx
            jnz   3b
            mov   byte ptr [rsi], 0
        # Prints intoutput
        5:
            lea   rsi, [intoutput]
            call  PrintString
        # Stack frame cleanup
        6:
            pop   rcx
            pop   r10
            pop   rsi
            pop   rdx
            pop   rax
            ret

    ReadString:
        1:
            push  rdi
            push  rdx
            push  rax
            call  DestroyBuffer
            lea   rsi, ExpectingInput
            call  PrintString
            mov   rax, 0
            mov   rdi, 0
            lea   rsi, [input]
            mov   rdx, 1023
            syscall
            cmp   rax, 1022
            jg    2f
            dec   rax
            mov   byte ptr [input + rax], 0
            jmp   3f
        2:
            call  FlushSTDIN
            lea   rsi, BufferOverflow
            call  PrintString
            jmp   1b
        3:
            pop   rax
            pop   rdx
            pop   rdi
            ret

    GetStringLength:
        1:
            xor   rax, rax
        2:
            cmp   BYTE PTR [rsi + rax], 0
            je    3f
            inc   rax
            jmp   2b
        3:
            ret

    FlushSTDIN:
        1:
            push  rax
            push  rdi
            push  rsi
            push  rdx
        2:
            mov   rax, 0
            mov   rdi, 0
            lea   rsi, [input]
            mov   rdx, 1
            syscall
            cmp   rax, 0
            je    3f
            cmp   byte ptr [input], 10
            jne   2b
        3:
            pop   rdx
            pop   rsi
            pop   rdi
            pop   rax
            ret

    DestroyBuffer:
        1:
            push  rax
            push  rcx
            push  rdi
            mov   rcx, 1024
            xor   rax, rax
            lea   rdi, [input]
            rep   stosb
            pop   rdi
            pop   rcx
            pop   rax
            ret

    IsStringInteger:
        .IsStringIntegerTop:
            push  rax
            push  r8
            push  rsi
            xor   rax, rax
            xor   r8, r8
            movzx rax, byte ptr [rsi]
            cmp   rax, '-'
            jne   .IsStringIntegerBody
            inc   rsi
        .IsStringIntegerBody:
            movzx rax, byte ptr [rsi + r8]
            cmp   rax, 0
            je    .IsStringIntegerVal
            cmp   rax, 48
            jl    .IsStringIntegerInv
            cmp   rax, 57
            jg    .IsStringIntegerInv
            inc   r8
            jmp   .IsStringIntegerBody
        .IsStringIntegerInv:
            mov   r15, 0
            jmp   .IsStringIntegerOut
        .IsStringIntegerVal:
            mov   r15, 1
            jmp   .IsStringIntegerOut
        .IsStringIntegerOut:
            pop   rsi
            pop   r8
            pop   rax
            ret

    ParseInt:
        .ParseIntTop:
            call  GetStringLength
            push  rax
            push  r8
            push  r13
            push  rdx
            push  r10
            xor   r8,  r8
            xor   r14, r14
            xor   r15, r15
            mov   r10, 1
            dec   r8
            inc   r15
            cmp   byte ptr [rsi], '-'
            jne   .ParseIntBody
            inc   r8
            mov   r10, -1
        .ParseIntBody:
            inc   r8
            cmp   r8, rax
            jge   .ParseIntOut
            movzx r13, byte ptr [rsi + r8]
            sub   r13, 48
            imul  r14, 10
            jo    .ParseIntOverflow
            add   r14, r13
            jo    .ParseIntOverflow
            jmp   .ParseIntBody
        .ParseIntOverflow:
            xor   r14, r14
            xor   r15, r15
        .ParseIntOut:
            imul  r14, r10
            pop   rdx
            pop   r13
            pop   r8
            pop   rax
            ret

        AttemptStringInt:
            1:
                nop
            2:
                call  IsStringInteger
                test  r15, r15
                jz    3f
                call  ParseInt

            3:

                ret
                