.intel_syntax noprefix
.section .data
    StartText:
    .asciz "Time to fire up your Anything Emulator! Answer \"Y\" to my questions by typing 1, or \"N\" by typing 0!\n"
    Question1: 
    .asciz "Do you want to try some puzzles?\n"
    Answer1:
    .asciz "I recommend chess!\n"
    Question2:
    .asciz "Do you want to blow stuff up?\n"
    Answer2:
    .asciz "Grand Theft Auto is a good choice!\n"
    Question3:
    .asciz "Do you want to dig holes?\n"
    Answer3:
    .asciz "Have you considered Minesweeper?\n"
    Question4:
    .asciz "Do you want to build things?\n"
    Answer4:
    .asciz "I suggest you try Minecraft!\n"
    EndText:
    .asciz "Have fun!\n"
    InvalidInput:
    .asciz "I need a \"Y\" for yes or \"N\" for no.\n"
    Questions:
    .quad Question1, Question2, Question3, Question4
    Answers:
    .quad Answer1, Answer2, Answer3, Answer4

.section .bss
    .comm answer, 32
    .comm printer, 1024

.section .text
.global _start
.global Begin
.global PrintAndAnswer
.global PrintAndAnswerLoop
.global PrintAndAnswerOut
.global RepeatQuestion
.global PrintString
.global GetStringLength
.global ReadString
.global ExitProgram

_start:

Begin:
    # prints start text
    # calls ThroughQuad
    # prints end text
    # exits program
    mov rsi, StartText
    call PrintString
    call PrintAndAnswer
    mov rsi, EndText
    call PrintString
    call ExitProgram

PrintAndAnswer:
    # prints question and takes 1-byte string input
    # if input isn't 1-byte, calls RepeatQuestion
    push rcx
    mov rcx, 0

PrintAndAnswerLoop:
    # loop part of print and answer
    cmp rcx, 4
    je PrintAndAnswerOut
    mov rsi, [Questions + rcx * 8]
    call PrintString
    call ReadString
    call GetStringLength
    cmp r15, 1
    jne RepeatQuestion
    cmp byte ptr [answer], 'Y'
    je AfterLoopPrint
    cmp byte ptr [answer], 'N'
    jne RepeatQuestion

LoopPrint:
    # prints answer to question
    mov rsi, [Answers + rcx * 8]
    call PrintString

AfterLoopPrint:
    # skips printer in loop if answer is "N". increments rcx, loops if more
    inc rcx
    jmp PrintAndAnswerLoop

PrintAndAnswerOut:
    # finishes print and answer loop
    pop rcx
    ret

RepeatQuestion:
    # calls PrintAndAnswer but with a different question loaded to rsi
    call PrintAndAnswer
    ret

PrintString:
    # gets string length and prints to string, returns
    call GetStringLength
    mov rax, 1
    mov rdi, 1
    mov rdx, r15
    syscall
    ret

GetStringLength:
    # uses loop to get string length
    push rcx
    mov rcx, 0

StringLengthIter:
    # loop part of getting string length
    cmp byte ptr [rsi + rcx], 0
    je StringLengthOut
    inc rcx
    jmp StringLengthIter

StringLengthOut:
    # returns string length
    mov r15, rcx
    pop rcx
    ret

ReadString:
    # reads string from stdin
    mov rsi, answer
    mov rdx, 16
    mov rax, 1
    mov rdi, 0
    syscall
    mov byte ptr [rsi + rax], 0
    ret

ExitProgram:
    mov rax, 60
    xor rdi, rdi
    syscall
    ret
