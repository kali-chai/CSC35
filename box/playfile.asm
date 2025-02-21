.intel_syntax noprefix
.section .data
    Text1:
    .asciz "Text1\n"
    Text2:
    .asciz "Text2\n"
    Text3:
    .asciz "Text3\n"
    Texts:
    .quad Text1, Text2, Text3, 0

.section .text
    .global Begin
    .global LoopQuestionStart
    .global LoopQuestionBody
    .global GetQuadLength
    .global QuadLenBody
    .global Break
    .global Exit
    


    Begin:
        call LoopQuestionStart
        jmp Exit
    LoopQuestionStart:
        lea r13, [Texts]
        xor rax, rax
        call GetQuadLength
    LoopQuestionBody:
        mov rsi, [r13 + rax * 8]
        call PrintString
        inc rax
        cmp rax, r14
        jl LoopQuestionBody
        ret

    GetQuadLength:
        push rax
        xor rax, rax
    QuadLenBody:
        lea r14, [Texts]
        cmp qword ptr [r14 + rax * 8], 0
        je Break
        inc rax
        jmp QuadLenBody
    Break:
        mov r14, rax
        pop rax
        ret
    Exit:
        mov rax, 60
        xor rdi, rdi
        syscall