.intel_syntax noprefix
.section .data
    NewLine: .asciz "\n"

.section .bss
    .lcomm intoutput, 20

.section .text
.global _start

_start:
    .TopOfInfiniteLoop:
        push rax
        inc r14
        call PrintInteger
        lea rsi, [NewLine]
        call PrintString
        jmp .TopOfInfiniteLoop

PrintInteger:
        .PrintIntegerTop:
            push rax
            push rdx
            push rsi
            push r10
            push rcx
            mov rax, r14
            lea rsi, [intoutput]
            xor rcx, rcx
        .PrintIntegerBody:
            mov rdx, 0
            mov r10, 10
            idiv r10
            add dl, '0'
            push rdx
            inc rcx
            test rax, rax
            jnz .PrintIntegerBody
        .PrintIntegerWrite:
            pop rdx
            mov byte ptr [rsi], dl
            inc rsi
            dec rcx
            jnz .PrintIntegerWrite
            mov byte ptr [rsi], 0
        .PrintIntegerOut:
            lea rsi, [intoutput]
            call PrintString
            pop rcx
            pop r10
            pop rsi
            pop rdx
            pop rax
            ret

    PrintString:
        .PrintStringTop:
            push rdi
            push rdx
            push rax
            call GetStringLength
            mov rdx, rax
            mov rax, 1
            mov rdi, 1
            syscall
            pop rax
            pop rdx
            pop rdi
            ret

    GetStringLength:
        .GetStringLengthTop:
            xor rax, rax
        .GetStringLengthIter:
            cmp BYTE PTR [rsi + rax], 0
            je .GetStringLengthOut
            inc rax
            jmp .GetStringLengthIter
        .GetStringLengthOut:
            ret