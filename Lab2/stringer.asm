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
        .asciz .asciz "Have fun!\n"
    
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


    # data functions
        .global StringLength
        .global StringLengthIter
        .global StringLengthOut

    # question functions
        .global QuestionLoop
        .global QuestionLoopIter
        .global QuestionLoopInputGet
        .global QuestionLoopPrintAnswer
        .global QuestionLoopContinue
        .global CheckAnswer
        .global CheckAnswerFail
        .global CheckAnswerSuccess


    _start:
        lea rsi, StartText
        call PrintString
        lea rsi, StartText
        call PrintString
        call QuestionLoop
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
        mov rax, 0
        mov rdi, 0
        lea rsi, [input]
        mov rdx, 1023
        syscall
        dec rax
        mov BYTE PTR [input + rax], 0
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

    Exit:
        mov rax, 60
        xor rdi, rdi
        syscall

# I learned weird things about assembly
# Thank you furries on the internet
# TEST is a funny thing because it basically lets you use a register as a boolean
# Buffers are not great for anything that's static or immediately discarded
# I used xor a lot
# Rather than complicating with a ton of functions, just make one that flows
# Consolidate your functions when you can unless you're absolutely sure they'll be used again
# Seeing above, learning how code flow works is important. Even if you don't have the exact library code available, you can make your own if you understand it
# Logic after input validation could be handled very simply in the same function. Don't make code fancy and complex if it doesn't need to be
# I can't say this enough. LEA is your lord and savior. Use it for anything that isn't another register, address, or 8-bit immediate
# DON'T LOAD STRINGS TO REGISTERS. USE LEA. IF YOUR STRING ISN'T TINY, IT'S NOT GOING TO FIT IN A REGISTER. ITS CALLED A SEGFAULT.
# JZ is a little weird. Note for reference: It's like a CMP, but sets the flag at register ZF. TEST RAX RAX then JZ SOMEFUNC is essentially a CMP RAX, 0 JE SOMEFUNC
# No need to check R12 against some value, just use the top of the iterator to check if plugging in R12 gets you a 0.