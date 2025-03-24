.intel_syntax noprefix

.section .data
    NewLine:
    .asciz "\n"

.section .bss
    .comm intoutput, 64

.section .text
.global _start
    _start:
        1:
        xor r12, r12
        2:
        mov r14, r12
        call PrintInteger
        lea rsi, NewLine
        call PrintString
        inc r12
        cmp r12, 6
        jle 2b
        3:
        call ExitProgram

    PrintString:
        1:
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
        1:
            xor rax, rax
        2:
            cmp byte ptr [rsi + rax], 0
            je 3f
            inc rax
            jmp 2b
        3:
            ret

    PrintInteger:
        1: 
            push rax
            push rdx
            push rsi
            push r10
            push rcx
            mov rax, r14
            lea rsi, [intoutput]
            xor rcx, rcx
        2:
            mov rdx, 0
            mov r10, 10
            idiv r10
            add dl, '0'
            push rdx
            inc rcx
            test rax, rax
            jnz 2b
        3:
            pop rdx
            mov byte ptr [rsi], dl
            inc rsi
            dec rcx
            jnz 3b
            mov byte ptr [rsi], 0
        4:
            lea rsi, [intoutput]
            call PrintString
            pop rcx
            pop r10
            pop rsi
            pop rdx
            pop rax
            ret
    ExitProgram:
        1:
            mov rax, 60
            xor rdi, rdi
            syscall
            ret
