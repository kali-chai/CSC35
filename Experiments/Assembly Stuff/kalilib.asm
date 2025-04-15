.section .rodata
    # asciz ExpectingInput:
        ExpectingInput:
        .asciz "> "
    # asciz NewLine:
        NewLine:
        .asciz "\n"
    # asciz ColonSpace
        ColonSpace:
        .asciz ": "
    # asciz BufferOverflow:
        BufferOverflow:
        .asciz "Buffer overflow, please try again.\n"

.section .bss
    # buffer Input:
        .type Input, @object
        .lcomm Input, 1024
    # buffer Output:
        .type Output, @object
        .comm Output, 1024
    # buffer IntOutput:
        .type IntOutput, @object
        .comm IntOutput, 64

.section .text
    # function PrintString:
    # Input: QWORD rsi (ADDRESS) - pointer to string to print
    # Output: None
        .global PrintString
        .type PrintString, @function
        PrintString:
            0:
                push        rdi
                push        rdx
                push        rax
            1:
                call        GetStringLength
                mov         rdx, rax
                mov         rax, 1
                mov         rdi, 1
                syscall
            2:
                pop         rax
                pop         rdx
                pop         rdi
                ret

    # function PrintInteger:
    # Input: QWORD r14 - integer to print
    # Output: None
        .global PrintInteger
        .type PrintInteger, @function
        PrintInteger:
            0:
                push        rax
                push        rdx
                push        rsi
                push        r10
                push        rcx
                push        rbx
            1:
                xor         rbx, rbx 
                xor         rcx, rcx
                lea         rsi, [IntOutput]
                mov         rax, r14
            2:
                test        rax, rax
                jns         3f
                mov         rbx, 1
                neg         rax
            3:
                mov         rdx, 0
                mov         r10, 10
                div         r10
                add         dl,  '0'
                push        rdx
                inc         rcx
                test        rax, rax
                jnz         3b
            4:
                test        rbx, rbx
                jz          5f
                mov         BYTE PTR [rsi], '-'
                inc         rsi
            5:
                pop         rdx
                mov         BYTE PTR [rsi], dl
                inc         rsi
                dec         rcx
                jnz         3b
                mov         BYTE PTR [rsi], 0
            6:
                lea         rsi, [intoutput]
                call        PrintString
            7:
                pop         rcx
                pop         r10
                pop         rsi
                pop         rdx
                pop         rax
                ret

    # function GetStringLength:
    # Input: QWORD rsi (as address) - pointer to string
    # Output: QWORD rax - length of the string
        .global ReadString
        .type ReadString, @function
        ReadString:
            0:
                push        rdi
                push        rdx
                push        rax
            1:
                call        DestroyBuffer
                lea         rsi, ExpectingInput
                call        PrintString
                mov         rax, 0
                mov         rdi, 0
                lea         rsi, [Input]
                mov         rdx, 1023
                syscall
                cmp         rax, 1022
                jg          2f
                dec         rax
                mov         BYTE PTR [Input + rax], 0
                jmp         3f
            2:
                call        FlushSTDIN
                lea         rsi, BufferOverflow
                call        PrintString
                jmp         1b
            3:
                pop         rax
                pop         rdx
                pop         rdi
                ret
                
        .type GetStringLength, @function
        GetStringLength:
            0:
                nop
            1:
                xor         rax, rax
            2:
                cmp         BYTE PTR [rsi + rax], 0
                je          3f
                inc         rax
                jmp         2b
            3:
                ret

        .type DestroyBuffer, @function
        DestroyBuffer:
            0:
                push        rax
                push        rcx
                push        rdi
            1:
                mov         rcx, 1024
                xor         rax, rax
                lea         rdi, [input]
                rep         stosb
            2:
                pop         rdi
                pop         rcx
                pop         rax
                ret

        .type FlushSTDIN, @function
        FlushSTDIN:
            0:
                push        rax
                push        rdi
                push        rsi
                push        rdx
            1:
                mov         rax, 0
                mov         rdi, 0
                lea         rsi, [input]
                mov         rdx, 1
                syscall
                cmp         rax, 0
                je          2f
                cmp         BYTE PTR [input], 10
                jne         1b
            2:
                pop         rdx
                pop         rsi
                pop         rdi
                pop         rax
                ret