.intel_syntax noprefix
.section .data
    # runtime string
    StartText:
        .asciz "Hello World.\n"

    # question strings
    Question1:
        .asciz "Would you like to continue? (Y/N)\n"
    Question2:
        .asciz "Would you like to see more? (Y/N)\n"
    Question3:
        .asciz "Should we proceed? (Y/N)\n"
    Question4:
        .asciz "One final question? (Y/N)\n"

    # answer strings
    Answer1:
        .asciz "You chose to continue!\n"
    Answer2:
        .asciz "Here's more content!\n"
    Answer3:
        .asciz "Proceeding forward!\n"
    Answer4:
        .asciz "Final step complete!\n"

    # error strings
    RepeatQuestionInv:
        .asciz "An invalid answer was given. Please enter Y or N.\n"
    RepeatQuestionVal:
        .asciz "The answer failed the value check. Please enter Y or N.\n"

    # end string
    EndText:
        .asciz "Program complete.\n"
    
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
    .global _start
    .global Exit

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
    # Handle newline character
    dec rax  # Exclude newline from length
    mov byte ptr [input + rax], 0  # Null terminate instead of newline
    ret

ValidateAnswer:
    # Check if input is exactly one character (plus null terminator)
    cmp byte ptr [input + 1], 0
    jne ValidateFailed
    
    # Check if input is 'Y' or 'N'
    mov al, byte ptr [input]
    cmp al, 'Y'
    je ValidateSuccess
    cmp al, 'N'
    je ValidateSuccess
    
ValidateFailed:
    lea rsi, [buf1]
    call PrintString
    mov rax, 0  # Return false
    ret

ValidateSuccess:
    mov rax, 1  # Return true
    ret

QuestionLoop:
    xor r12, r12  # Question counter
    
QuestionLoopIter:
    # Check if we've reached the end of questions
    lea rsi, [Questions + r12 * 8]
    mov rsi, [rsi]
    test rsi, rsi
    jz QuestionLoopEnd
    
    # Print current question
    call PrintString
    
    # Read and validate input
InputRetry:
    call ReadString
    call ValidateAnswer
    test rax, rax
    jz InputRetry  # If validation failed, try again
    
    # Process answer
    mov al, byte ptr [input]
    cmp al, 'Y'
    je PrintAnswer
    cmp al, 'N'
    je NextQuestion
    
PrintAnswer:
    lea rsi, [Answers + r12 * 8]
    mov rsi, [rsi]
    call PrintString
    
NextQuestion:
    inc r12
    jmp QuestionLoopIter
    
QuestionLoopEnd:
    ret

StringLength:
    xor rax, rax
StringLengthLoop:
    cmp byte ptr [rsi + rax], 0
    je StringLengthDone
    inc rax
    jmp StringLengthLoop
StringLengthDone:
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

Exit:
    mov rax, 60
    xor rdi, rdi
    syscall