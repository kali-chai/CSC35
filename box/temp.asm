.intel_syntax noprefix

.section .data
    # runtime string
        StartText:
        .asciz "Time to fire up your Anything Emulator! Answer \"Y\" to my questions or \"N\"!\n"

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
        lea rsi, input
        call ReadString
        cmp byte ptr [rsi], 0
        je AnswerInval
        cmp byte ptr [rsi + 1], 0
        jne AnswerInval
        cmp byte ptr [rsi], 'N'
        je AnswerVal
        cmp byte ptr [rsi], 'Y'
        Jne AnswerInval
        lea rsi, [Answers + r12 * 8]
        mov rsi, [rsi]
        call PrintString
    AnswerVal:
        inc r12
        jmp QuestionLoopIter
    AnswerInval:
        lea rsi, [RepeatQuestionInv]
        call PrintString
        jmp QuestionLoopIter
    QuestionLoopEnd:
        ret


    # This was meant to handle large inputs (>=1MiB) gracefully, but I wasn't able to fix the bug. This program will hang on an input larger than the buffer - 1. The library-less version of this program will also encounter a less severe version of this bug, but will print duplicate strings instead of hanging, and otherwise function as normal. This might be the result of buffer overflow.

