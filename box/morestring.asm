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
        .global QuadLength
        .global StringLength

    # question functions
        .global QuestionLoop
        .global ValidateAnswer
        .global EvaluateAnswer


    _start:
        lea rsi, StartText
        call PrintString
        lea rsi, RepeatQuestionInv
        call SendToBuf1
        lea rsi, RepeatQuestionVal
        call SendToBuf2
        lea rsi, StartText
        call PrintString
        call QuestionLoop
        lea rsi, EndText
        call PrintString


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
        lea rdi, [input]
        call SendToInput
        add rdi, rax
        mov BYTE PTR [rdi], 0
        lea rsi, [input]
        ret

    SendToOutput:
        lea rdi, [output]
        call StringLength
        mov rcx, rax
        rep movsb
        ret

    SendToInput:
        lea rdi, [input]
        call StringLength
        mov rcx, rax
        rep movsb
        ret

    SendToBuf1:
        lea rdi, [buf1]
        call StringLength
        mov rcx, rax
        rep movsb
        ret

    SendToBuf2:
        lea rdi, [buf2]
        call StringLength
        mov rcx, rax
        rep movsb
        ret

    SendToBuf3:
        lea rdi, [buf3]
        call StringLength
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

    QuadLength:
        push rax
        xor rax, rax
    QuadLengthIter:
        lea r14, [Questions]
        cmp qword ptr [r14 + rax * 8], 0
        je QuadLengthOut
        inc rax
        jmp QuadLengthIter
    QuadLengthOut:
        mov r14, rax
        pop rax
        ret

    QuestionLoop:
        lea r13, [Questions]
        xor rax, rax
        call QuadLength
        mov r15, r14

    QuestionLoopIter:
        xor r14, r14
        lea rsi, [r13 + rax * 8]
        call SendToOutput
        call PrintString
        call ReadString
        call SendToInput
        call ValidateAnswer
        call EvaluateAnswer
        cmp rax, r15
        je QuestionLoopEnd
        cmp r14, 1
        jne QuestionLoopIter
        inc rax
        jmp QuestionLoopIter

    QuestionLoopEnd:
        ret


    ValidateAnswer:
        call StringLength
        cmp rax, 1
        jne ValidateFailed
        ret

    ValidateFailed:
        lea rsi, [buf1]
        call PrintString
        ret


    EvaluateAnswer:
        cmp byte ptr [rsi], 'Y'
        je EvalTrueCon1
        cmp byte ptr [rsi], 'N'
        je EvalTrueCon2
        mov r14, 0
        lea rsi, [buf2]
        call PrintString
        ret

    EvalTrueCon1:
        push rsi
        lea rsi, [Answers]
        lea rsi, [rsi + rax * 8]
        call PrintString
        mov r14, 1
        pop rsi
        ret

    EvalTrueCon2:
        mov r14, 1
        ret

    Exit:
        mov rax, 60
        xor rdi, rdi
        syscall
        