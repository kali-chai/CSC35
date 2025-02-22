.intel_syntax noprefix

.section .rodata
    # runtime string
        StartText:
        .asciz "Time to fire up your Anything Emulator! Answer \"Y\" to my questions or \"N\"!\n"
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

    # FUNCTION: Loops through questions and answers using R12 as an index. In each iteratin, RSI is loaded with the address of the question string. RSI is checked for null value, and if it's null, the loop ends. Otherwise, PrintString is called for the question and input prompt, then RSI is pointed to the input buffer and ReadString is called. The input is checked for several conditions. First condition that will invalidate the answer is if the first byte is a null byte. Second condition that will invalidate the answer is if the second byte is a null byte. First condition to validate the answer is if the first byte is 'N': In this case, jump to answer validation. The last condition to invalidate the answer is if the first byte is NOT 'Y'. If the answer is valid, RSI is pointed to the appropriate answer string using the index in R12, and the string is printed. In all cases of valid input, R12 is incremented and the program jumps to the top of the loop body. If the answer is invalid, the program points RSI to an error message and prints it. The program then jumps to the top of the loop body WITHOUT incrementing R12. The end of the loop is a simple return.
    # INPUT: None.
    # CLOBBERS: Registers R12, RSI.
    QuestionLoop:
        .QuestionLoopStart:
            xor r12, r12
        .QuestionLoopIter:
            lea rsi, [Questions + r12 * 8]
            mov rsi, [rsi]
            test rsi, rsi
            jz .QuestionLoopEnd
            call PrintString
            push rsi
            lea rsi, ExpectingInput
            call PrintString
            pop rsi
            lea rsi, input
            call ReadString
        .AnswerCheck:
            cmp byte ptr [rsi], 0
            je .AnswerInval
            cmp byte ptr [rsi + 1], 0
            jne .AnswerInval
            cmp byte ptr [rsi], 'N'
            je .AnswerVal
            cmp byte ptr [rsi], 'Y'
            Jne .AnswerInval
            lea rsi, [Answers + r12 * 8]
            mov rsi, [rsi]
            call PrintString
        .AnswerVal:
            inc r12
            jmp .QuestionLoopIter
        .AnswerInval:
            lea rsi, [RepeatQuestionInv]
            call PrintString
            jmp .QuestionLoopIter
        .QuestionLoopEnd:
            ret

# Note: The libraryless version of this program is better-commented and has a dedicated buffer overflow checker/flusher. Do not ask how long it took me to write it, it was painful.
# This was a tricky one. I initially tried to program this to store a counter that then compared the iterations to the length of the quad, which would then break the loop if they matched. It was too complex and doubled the label size. Before this, this program used to have separate functions for different types of bad input, and I also tried to write a buffer overflow handler in its own function.
# I also wrote around ReadString calls to print "> " to the terminal. User experience.
# the benefits of caffeine
