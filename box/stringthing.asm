.intel_syntax noprefix
.section .data
    # runtime string
        StartText:
        .asciz "Hello World.\n"

    # question strings
        Question1:
        .asciz "This is a test.\n"
        Question2:
        .asciz "This is an intermediate.\n"
        Question3:
        .asciz "This is another intermediate.\n"
        Question4:
        .asciz "This is another.\n"

    # answer strings
        Answer1:
        .asciz "This is the answer.\n"
        Answer2:
        .asciz "This is the second answer.\n"
        Answer3:
        .asciz "This is the third answer.\n"
        Answer4:
        .asciz "This is the fourth answer.\n"

    # error strings
        RepeatQuestionInv:
        .asciz "An invalid answer was given.\n"
        RepeatQuestionVal:
        .asciz "The answer failed the value check.\n"

    # end string
        EndText:
        .asciz "This is the last string.\n"
    
    Questions:
        .quad Question1, Question2, Question3, Question4, 0
    Answers:
        .quad Answer1, Answer2, Answer3, Answer4, 0

.section .bss
    .comm input, 1024
    .comm output, 1024
    .comm buf1, 1024
    .comm buf2, 1024
    .comm buf3, 1024

.section .text
    # runtime functions
        .global _start
        .global QuestionAnswer
        .global Exit

    # i/o functions
        .global PrintString
        .global ReadString
        .global SendToOutput
        .global SendToInput

    # buffer functions
        .global SendToBuf1
        .global SendToBuf2
        .global SendToBuf3

    # quad functions
        .global QuadLength
        .global QuadLengthIter
        .global QuadLengthOut

    # string checker, consider as one
        .global StringLength
        .global StringLengthIter
        .global StringLengthOut

    # question functions
        .global QuestionLoop
        .global QuestionLoopBody
        .global QuestionLoopEnd
        .global QuestionRepeater
        .global AskQuestion
        .global CheckAnswer
        .global Eval
        .global EvalTrue
        .global EvalFalse


    _start:
        lea rsi, StartText
        lea rcx, [StartText]
        call PrintString
        call QuestionLoop
        lea rsi, EndText
        lea rcx, [EndText]
        call PrintString


    PrintString:
        push rax
        call StringLength
        lea rsi, [rcx]
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
        lea rdi, [input]
        add rdi, rax
        mov BYTE PTR [rdi], 0
        lea rsi, [input]
        ret

    SendToOutput:
        lea rdi, [output]
        call StringLength
        lea rsi, [rsi]
        mov rcx, rax
        rep movsb
        ret

    SendToInput:
        lea rdi, [input]
        call StringLength
        lea rsi, [rsi]
        mov rcx, rax
        rep movsb
        ret

    SendToBuf1:
        lea rdi, [buf1]
        call StringLength
        lea rsi, [rsi]
        mov rcx, rax
        rep movsb
        ret

    SendToBuf2:
        lea rdi, [buf2]
        call StringLength
        lea rsi, [rsi]
        mov rcx, rax
        rep movsb
        ret

    SendToBuf3:
        lea rdi, [buf3]
        call StringLength
        lea rsi, [rsi]
        mov rcx, rax
        rep movsb
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


    QuadLength: # call after setting r15 to the target quad. result returns to r14
        push rax
        xor rax, rax

    QuadLengthIter:
        lea r14, [r15]
        cmp qword ptr [r14 + rax * 8], 0
        je QuadLengthOut
        inc rax
        jmp QuadLengthIter

    QuadLengthOut:
        mov r14, rax
        pop rax
        ret


    QuestionLoop: # called in main
        push rsi
        push rax
        lea r13, [Questions]
        xor rax, rax

    
    QuestionLoopBody: 
        mov r15, r13
        push rax
        xor rax, rax
        call QuadLength # r14 = number of questions. because we have the same number of answers and questions, r14 can represent length for both quads
        call AskQuestion
        call CheckAnswer
        cmp r15, 0
        call QuestionRepeater
        call Eval
        cmp r15, 1
        call QuestionRepeater
        pop rax
        inc rax
        cmp rax, r14
        jl QuestionLoopBody

    QuestionLoopEnd:
        pop rsi
        pop rax
        ret


    AskQuestion: # sends 
        mov rsi, [r13 + rax * 8]
        call SendToOutput
        call PrintString
        lea rsi, [input]
        call ReadString
        call SendToInput
        ret
        
    CheckAnswer:
        push rax
        call StringLength
        cmp rax, 1
        jne CheckFail
        pop rax
        ret
    
    CheckFail:
        pop rax
        lea rsi, [RepeatQuestionInv]
        mov r15, 0
        ret
        
    Eval:
        mov r12, rsi
        push rsi
        mov rsi, r12
        cmp byte ptr [rsi], 'Y'
        je EvalTrue
        cmp byte ptr [rsi], 'N'
        je EvalFalse
        mov r12, 1
        pop rsi
        lea rsi, [RepeatQuestionVal]
        call SendToOutput
        ret
    
    EvalTrue:
        lea rsi, [Answers]
        lea rsi, [rsi + rax * 8]
        call SendToOutput
        call PrintString
        mov r15, 2
        pop rsi
        ret
    
    EvalFalse:
        mov r15, 2
        pop rsi
        ret

    QuestionRepeater:
        call PrintString
        lea rsi, [input]
        call ReadString
        call SendToInput
        call CheckAnswer
        cmp r15, 0
        je QuestionRepeater 
        call Eval
        cmp r15, 1
        je QuestionRepeater


    Exit:
        mov rax, 60
        xor rdi, rdi
        syscall
