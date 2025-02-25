.intel_syntax noprefix

.section .data
    # runtime string
        StartText:
        .asciz "Time to fire up your Anything Emulator! Answer \"Y\" to my questions by typing 1, or \"N\" by typing 0!\n"

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
        .asciz "I recommend chess!\n"
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
    
    # arrays of questions and answers plus null terminator
    Questions:
        .quad Question1, Question2, Question3, Question4, 0
    Answers:
        .quad Answer1, Answer2, Answer3, Answer4, 0

.section .bss
    # input buffer. 1 KiB because I'm lazy
    .comm input, 1024

.section .text
    .global Begin

    Begin:
        lea rsi, StartText
        call PrintString
        call QuestionLoop
        lea rsi, EndText
        call PrintString
        call ExitProgram

    QuestionLoop:
        xor r12, r12
    QuestionLoopIter:
        lea rsi, [Questions + r12 * 8]
        mov rsi, [rsi]
        test rsi, rsi
        jz QuestionLoopEnd
        call PrintString
    QuestionLoopInputGet:
        call ReadString
        call SendToInput
        call CheckAnswer
        test rax, rax
        jz QuestionLoopInputGet
        mov al, byte ptr [input]
        cmp al, 'N'
        je QuestionLoopContinue
    QuestionLoopPrintAnswer:
        lea rsi, [Answers + r12 * 8]
        mov rsi, [rsi]
        call PrintString
    QuestionLoopContinue:
        inc r12
        jmp QuestionLoopIter
    QuestionLoopEnd:
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

    SendToInput:
        lea rdi, [input]
        mov rcx, 1023
    SendToInputLoop:
        mov al, byte ptr [rsi]
        mov byte ptr [rdi], al
        test al, al
        jz SendToInputEnd
        inc rsi
        inc rdi
        loop SendToInputLoop
    SendToInputEnd:
        ret
