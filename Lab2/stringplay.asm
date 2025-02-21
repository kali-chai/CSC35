.intel_syntax noprefix
.section .data
    StartText:
    .asciz "Hello World.\n"
    SecondText:
    .asciz "This is a test.\n"
    RandomQuestion:
    .asciz "Reply to this with Y.\n"

.section .bss
    .comm buffer, 1024
    .comm input, 1024
    .comm counter, 2

.section .text
    .global _start
    .global askQuestion
    .global ReadString
    .global PrintString
    .global SendToBuffer
    .global StringLength
    .global StringLengthIter
    .global StringLengthOut
    .global Exit

# RSI: Stores string
# RAX: Stores syscall opcode and function returns
# RDI: For syscall type
# RDX: For syscall length

_start:
    lea rsi, StartText
    lea rcx, [StartText]
    call PrintString
    lea rsi, SecondText
    lea rcx, [SecondText]
    call PrintString
    call ReadString
    call SendToBuffer
    lea rsi, buffer
    lea rcx, [buffer]
    call PrintString
    call AskQuestion
    call Eval
    call Exit

AskQuestion:
    lea rsi, RandomQuestion
    lea rcx, [RandomQuestion]
    call PrintString
    call ReadString
    call SendToBuffer

GetAnswer:
    call ReadString
    call SendToBuffer
    call StringLength
    lea rsi, [buffer]
    cmp rax, 1
    jne AskQuestion

AnswerOut:
    mov rax, 1
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

PrintString:
    call StringLength
    lea rsi, [rcx]
    mov rdx, rax
    mov rax, 1
    mov rdi, 1
    syscall
    ret

SendToBuffer:
    lea rdi, [buffer]
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

Exit:
    mov rax, 60
    xor rdi, rdi
    syscall
    ret

# Personal Notes:
# Demonstration of Hello World in x86-64 assembly

# What I learned:
# Printing strings is really hard
# You CANNNOT use arbitrary registers for returns
# You WILL need to use the stack for returns
# Return from a function using RAX, or call it to a buffer writer
# Don't use MOV to copy a string to a register, dereference with LEA
# DEREFERENCE WITH LEA. IT'S A POINTER. OR ELSE YOU GET A SIGSEGV
# Learn how to use the stack, push and pop. This will be important when writing secure code
# If making a buffer, use LCOMM. COMM will make your buffer global.
# Assembly is a very good way to lose your sanity
# This is the most fun I've had in years
