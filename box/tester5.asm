.intel_syntax noprefix
        ColonSpace:
        .asciz ": "

        Game1:
        .asciz "Pac-Man\n"
        Game2:
        .asciz "Breakout\n"
        Game3:
        .asciz "Freeway\n"
        Game4:
        .asciz "Space Invaders\n"
        Game5:
        .asciz "Asteroids\n"
        Game6:
        .asciz "Pong\n"

        OptionQuad:
        .quad Game1, Game2, Game3, Game4, Game5, Game6, 0

.section .bss
        .comm input, 1024
        .comm intoutput, 64

.section .text
    .global _start

    _start:
        call PrintOptions
        call Exit

    
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

    PrintOptions:
        .PrintOptionsTop:
            push r14
            push r15
            xor r15, r15
        .PrintOptionsBody:
            cmp qword ptr [OptionQuad + r15 * 8], 0
            je .PrintOptionsOut
            inc r15
            mov r14, r15
            call PrintInteger
            dec r15
            lea rsi, [ColonSpace]
            call PrintString
            mov rsi, [OptionQuad + r15 * 8]
            call PrintString
            inc r15
            jmp .PrintOptionsBody
        .PrintOptionsOut:
            pop r15
            pop r14
            ret

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

    GetQuadLength:
        .GetQuadLengthTop:
            xor rax, rax
        .GetQuadLengthIter:
            cmp qword ptr [rsi + rax * 8], 0
            je .GetQuadLengthOut
            inc rax
            jmp .GetQuadLengthIter
        .GetQuadLengthOut:
            ret

    Exit:
        .ExitTop:
            mov rax, 60
            xor rdi, rdi
            syscall
            ret
