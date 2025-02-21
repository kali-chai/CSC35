.intel_syntax noprefix
.section .data
    StartText:
    .asciz "This is some text\n"

.section .bss
    .comm printer, 1024

.section .text
.global _start
.global PrintString
.global StringLength
.global StringLengthIter
.global StringLengthOut
.global CopyBuffer
.global Exit

# RAX: For syscall
# RDI: For syscall "type" (also used for movsb)
# RDX: For syscall "size"
# RSI: For syscall "buffer"
# R14: Store string buffer location
# R15: Generic

_start:
    lea rsi, StartText
    lea rdi, printer
    call CopyBuffer
    lea r14, [rdi]
    call PrintString
    call Exit

PrintString:
    lea rdi, [r14]
    call StringLength
    mov rax, 1
    mov rdi, 1
    mov rdx, r15
    syscall
    ret

StringLength:
    mov r15, 0

StringLengthIter:
    cmp BYTE PTR [rdi + r15 * 1], 0
    je StringLengthOut
    inc r15
    jmp StringLengthIter

StringLengthOut:
    ret

CopyBuffer:
    mov rcx, 0

CheckLen:
    cmp BYTE PTR [rsi + rcx * 1], 0
    je CopyBufferOut
    inc rcx
    jmp CheckLen

CopyBufferOut:
    rep movsb
    ret

Exit:
    mov rax, 60
    xor rdi, rdi
    syscall
    ret
