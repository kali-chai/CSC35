.intel_syntax noprefix

.section .rodata
    # runtime string
        StartText:
        .asciz "Time to fire up your Anything Emulator! Answer my questions by typing \"Y\" for yes, or \"N\" for no!\n"
        ExpectingInput:
        .asciz "> "

    # question strings
        Question1:
        .asciz "Do you want to try some puzzles?\n"
        Question2:
        .asciz "Do you want to blow stuff up?\n"
        Question3:
        .asciz "Do you want to dig holes?\n"
        Question4:
        .asciz "Do you want to build things?\n"

    # answer strings
        Answer1:
        .asciz "I recommend Chess!\n"
        Answer2:
        .asciz "Grand Theft Auto is a good choice!\n"
        Answer3:
        .asciz "Have you considered Minesweeper?\n"
        Answer4:
        .asciz "I suggest you try Space Engineers!\n"

    # error strings
        RepeatQuestionInv:
        .asciz "I need a \"Y\" for yes or \"N\" for no.\n"

    # end string
        EndText:
        .asciz "Have fun!\n"
    
    Questions:
        .quad Question1, Question2, Question3, Question4, 0
    Answers:
        .quad Answer1, Answer2, Answer3, Answer4, 0

.section .bss
    .comm input, 1024

.section .text
    # runtime functions
        .global _start
        .global Exit

    # i/o functions
        .global PrintString
        .global ReadString
        .global ReadStringFlush
        .global ReadStringFlushBody
        .global ReadStringNorm

    # data functions
        .global StringLength
        .global StringLengthIter
        .global StringLengthOut

    # question functions
        .global QuestionBody
        .global QuestionBodyIter
        .global QuestionBodyInputGet
        .global QuestionBodyPrintAnswer
        .global QuestionBodyContinue
        .global CheckAnswer
        .global CheckAnswerFail
        .global CheckAnswerSuccess


    _start:
        lea rsi, StartText
        call PrintString
        call QuestionBody
        lea rsi, EndText
        call PrintString
        call Exit


    PrintString:
        push rax
        call StringLength
        mov rdx, rax
        mov rax, 1
        mov rdi, 1
        syscall
        pop rax
        ret

    ReadString:
        lea rsi, ExpectingInput
        call PrintString
        mov rax, 0
        mov rdi, 0
        lea rsi, [input]
        mov rdx, 1023
        syscall
        cmp rax, 1023
        jle ReadStringNorm
    ReadStringFlush:
        push rax
        push rsi
        push rdx
    ReadStringFlushBody:
        mov rax, 0
        mov rdi, 0
        lea rsi, [input]
        mov rdx, 1024
        syscall
        cmp rax, 0
        jg ReadStringFlushBody
        pop rdx
        pop rsi
        pop rax
        jmp QuestionBodyInputGet
    ReadStringNorm:
        dec rax
        mov byte ptr [input + rax], 0
        ret

    StringLength:
        xor rax, rax
    StringLengthIter:
        cmp BYTE PTR [rsi + rax], 0
        je StringLengthOut
        inc rax
        jmp StringLengthIter
    StringLengthOut:
        ret

    QuestionBody:
        xor r12, r12
    QuestionBodyIter:
        lea rsi, [Questions + r12 * 8]
        mov rsi, [rsi]
        test rsi, rsi
        jz QuestionBodyEnd
        call PrintString
    QuestionBodyInputGet:
        call ReadString
        call CheckAnswer
        test rax, rax
        jz QuestionBodyInputGet
        mov al, byte ptr [input]
        cmp al, 'N'
        je QuestionBodyContinue
    QuestionBodyPrintAnswer:
        lea rsi, [Answers + r12 * 8]
        mov rsi, [rsi]
        call PrintString
    QuestionBodyContinue:
        inc r12
        jmp QuestionBodyIter
    QuestionBodyEnd:
        ret

    CheckAnswer:
        cmp byte ptr [input + 1], 0
        jne CheckAnswerFail
        mov al, byte ptr [input]
        cmp al, 'Y'
        je CheckAnswerSuccess
        cmp al, 'N'
        je CheckAnswerSuccess
    CheckAnswerFail:
        lea rsi, [RepeatQuestionInv]
        call PrintString
        xor rax, rax
        ret
    CheckAnswerSuccess:
        ret

    Exit:
        mov rax, 60
        xor rdi, rdi
        syscall
    