extern printf
extern scanf
extern getchar
extern strlen
extern ExitProcess

DEFAULT REL

section .data
    StartText db "Time to fire up your Anything Emulator! Answer my questions by typing 'Y' for yes, or 'N' for no!", 0xd, 0xa, 0
    ExpectingInput db "> ", 0
    EndText db "Have fun!", 0xd, 0xa, 0

    Question1 db "Do you want to try some puzzles?", 0xd, 0xa, 0
    Question2 db "Do you want to blow stuff up?", 0xd, 0xa, 0
    Question3 db "Do you want to dig holes?", 0xd, 0xa, 0
    Question4 db "Do you want to build things?", 0xd, 0xa, 0

    Answer1 db "I recommend Chess!", 0xd, 0xa, 0
    Answer2 db "Grand Theft Auto is a good choice!", 0xd, 0xa, 0
    Answer3 db "Have you considered Minesweeper?", 0xd, 0xa, 0
    Answer4 db "I suggest you try Space Engineers!", 0xd, 0xa, 0

    RepeatQuestionInv db "I need a 'Y' for yes or 'N' for no.", 0xd, 0xa, 0
    BufferOverflow db "That input is too large! Press any key to retry.", 0xd, 0xa, 0

    Questions dq Question1, Question2, Question3, Question4, 0
    Answers dq Answer1, Answer2, Answer3, Answer4, 0

    fmt_input db "%s", 0

section .bss
    input resb 1024

section .text
    global main

main:
    push rbp
    mov rbp, rsp
    sub rsp, 32
    and rsp, -16

    lea rcx, [StartText]
    call printf

    call Question

    lea rcx, [EndText]
    call printf
    xor rcx, rcx
    call ExitProcess

PrintString:
    push rbp
    mov rbp, rsp
    sub rsp, 32
    and rsp, -16
    call printf
    leave
    ret

ReadString:
    push rbp
    mov rbp, rsp
    sub rsp, 32
    and rsp, -16

    lea rcx, [ExpectingInput]
    call printf

    lea rcx, [fmt_input]
    lea rdx, [input]
    call scanf

    leave
    ret

DestroyBuffer:
    push rcx
    push rdi
    mov rcx, 1024
    xor rax, rax
    lea rdi, [input]
    rep stosb
    pop rdi
    pop rcx
    ret

Question:
    push rbp
    mov rbp, rsp
    sub rsp, 32
    xor r12, r12

.QuestionLoop:
    lea rcx, [Questions + r12 * 8]
    mov rcx, [rcx]
    test rcx, rcx
    jz .QuestionDone

    call printf
    call ReadString
    call CheckAnswer

    jmp .QuestionLoop

.QuestionDone:
    add rsp, 32
    mov rbp, rsp
    ret

CheckAnswer:
    push rbp
    mov rbp, rsp
    sub rsp, 32

    lea rcx, [input]
    mov al, byte [rcx]
    cmp byte [rcx + 1], 0
    jne .InvalidInput

    cmp al, 'Y'
    je .PrintAnswer
    cmp al, 'N'
    je .ValidNoAnswer
    
.InvalidInput:
    lea rcx, [RepeatQuestionInv]
    call printf
    jmp Question.QuestionLoop

.PrintAnswer:
    lea rcx, [Answers + r12 * 8]
    mov rcx, [rcx]
    call printf

.ValidNoAnswer:
    inc r12
    add rsp, 32
    mov rbp, rsp
    ret