.intel_syntax noprefix

.section .data
    ExpectingInput:
    .asciz "> "
    NewLine:
    .asciz "\n"
    BufferOverflow:
    .asciz "Buffer overflow detected! Please try again.\n"
    Welcome:
    .asciz "Welcome to the integer parser. Enter an integer.\n"

.section .bss
    .comm input, 1024
    .comm intoutput, 64
    .comm output, 1024

.section .text
    .global _start

    _start:
        1:
        lea rsi, Welcome
        call PrintString
        call ReadString
        lea rsi, [input]
        call AttemptStringInt
        test r11, r11
        jz   3f
        2:
        call PrintInteger
        call PrintNL
        call ExitProgram
        3:
        call PrintString
        call PrintNL
        call ExitProgram
        
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

    PrintStringNL:
        0:
            nop
        1:
            call  PrintString
            call  PrintNL
        2:
            ret

    PrintNL:
        0:
            push rsi
        1:
            lea   rsi, [NewLine]
            call  PrintString
        2:
            pop rsi
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
            mov byte ptr [rsi], '-'
            neg rax
            inc rsi
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
        # Pops all digits from stack and writes them to intoutput
        4:
            pop   rdx
            mov   byte ptr [rsi], dl
            inc   rsi
            dec   rcx
            jnz   4b
            mov   byte ptr [rsi], 0
        # Prints intoutput
        5:
            lea   rsi, [intoutput]
            call  PrintString
        # Stack frame cleanup
        6:
            pop   rbx
            pop   rcx
            pop   r10
            pop   rsi
            pop   rdx
            pop   rax
            ret

    ParseInt:
        0:
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
        1:
            cmp   byte ptr [rsi], '-'
            jne   2f
            inc   r8
            mov   r10, -1
        2:
            inc   r8
            cmp   r8, rax
            jge   4f
            movzx r13, byte ptr [rsi + r8]
            sub   r13, 48
            imul  r14, 10
            jo    3f
            add   r14, r13
            jo    3f
            jmp   2b
        3:
            xor   r14, r14
            xor   r15, r15
            jmp   4f
        4:
            imul  r14, r10
            pop   r10
            pop   rdx
            pop   r13
            pop   r8
            pop   rax
            ret

    GetStringLength:
        0:
            xor   rax, rax
        1:
            cmp   BYTE PTR [rsi + rax], 0
            je    2f
            inc   rax
            jmp   1b
        2:
            ret

    ReadString:
        0:
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
        1:
            call  FlushSTDIN
            lea   rsi, BufferOverflow
            call  PrintString
            jmp   1b
        2:
            lea   rsi, [input]
            pop   rax
            pop   rdx
            pop   rdi
            ret

    IsStringInteger:
        0:
            push  rax
            push  r8
            push  rsi
            xor   rax, rax
            xor   r8, r8
            movzx rax, byte ptr [rsi]
        1:
            cmp   rax, '-'
            jne   2f
            inc   rsi
        2:
            movzx rax, byte ptr [rsi + r8]
            cmp   rax, 0
            je    4f
            cmp   rax, 48
            jl    3f
            cmp   rax, 57
            jg    3f
            inc   r8
            jmp   2b
        3:
            mov   r15, 0
            jmp   5f
        4:
            mov   r15, 1
            jmp   5f
        5:
            pop   rsi
            pop   r8
            pop   rax
            ret

    FlushSTDIN:
        0:
            push  rax
            push  rdi
            push  rsi
            push  rdx
        1:
            mov   rax, 0
            mov   rdi, 0
            lea   rsi, [input]
            mov   rdx, 1
            syscall
            cmp   rax, 0
            je    3f
            cmp   byte ptr [input], 10
            jne   1b
        3:
            pop   rdx
            pop   rsi
            pop   rdi
            pop   rax
            ret
    
    DestroyBuffer:
        0:
            push  rax
            push  rcx
            push  rdi
            mov   rcx, 1024
            xor   rax, rax
            lea   rdi, [input]
        1:
            rep   stosb
        2:
            pop   rdi
            pop   rcx
            pop   rax
            ret

    AttemptStringInt:
        0:
            xor   r11, r11
        1:
            call  IsStringInteger
            test  r15, r15
            jz    2f
            call  ParseInt
            inc   r11
        2:
            ret

    ExitProgram:
        0:
            nop
        1:
            mov   rax, 60
            xor   rdi, rdi
            syscall
        2:
            ret
