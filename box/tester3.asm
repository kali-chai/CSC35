.intel_syntax noprefix

.section .rodata
    # Test strings
    ColonSpace:
    .asciz ": "
    NewLine:
    .asciz "\n"
    
    # Test options
    Option1:
    .asciz "First Option\n"
    Option2:
    .asciz "Second Option\n"
    Option3:
    .asciz "Third Option\n"
    
    # Array of options for testing
    OptionQuad:
    .quad Option1, Option2, Option3, 0

.section .text
    .global _start
    
_start:
    # Test PrintOptions
    lea rsi, OptionQuad
    call PrintOptions
    call Exit

# Helper Functions
PrintOptions:
    .PrintOptionsTop:
        call getQuadLength
        push r8
        push r15
        push rsi
        xor r8, r8
        dec r8
    .PrintOptionsBody:
        inc r8
        mov rsi, [rsp]
        cmp qword ptr [rsi + r8 * 8], 0
        je .PrintOptionsOut
        mov r15, r8
        inc r15
        call PrintInteger
        lea rsi, [ColonSpace]
        call PrintString
        lea rsi, OptionQuad
        mov rsi, [rsi + r8 * 8]
        call PrintString
        jmp .PrintOptionsBody
    .PrintOptionsOut:
        pop rsi
        pop r15
        pop r8
        ret

# Print an integer in R15
PrintInteger:
        .PrintIntegerTop:
            mov rax, r15
            mov rdx, 10
            mov r10, 10
            lea rsi, [Intoutput]
        .PrintIntegerBody:
            push rdx
            xor rdx, rdx
            idiv r10
            add dl, 48
            cmp rax, 0
            jne .PrintIntegerBody
        .PrintIntegerWrite:
            mov byte ptr [rsi], dl
            inc rsi
            pop rdx
            cmp rdx, 10
            jne .PrintIntegerWrite
        .PrintIntegerOut:
            lea rsi, [intoutput]
            call PrintString
            ret

# Get length of null-terminated quad array
getQuadLength:
    push rcx
    xor rcx, rcx
    .countLoop:
        cmp qword ptr [rsi + rcx * 8], 0
        je .done1
        inc rcx
        jmp .countLoop
    .done1:
        mov rax, rcx
        pop rcx
        ret

# Print string pointed to by RSI
PrintString:
    push rax
    push rdi
    push rdx
    push rsi
    
    call StringLength
    mov rdx, rax
    mov rax, 1
    mov rdi, 1
    syscall
    
    pop rsi
    pop rdx
    pop rdi
    pop rax
    ret

# Get string length
StringLength:
    xor rax, rax
    .loop:
        cmp byte ptr [rsi + rax], 0
        je .done2
        inc rax
        jmp .loop
    .done2:
        ret

# Exit program
Exit:
    mov rax, 60
    xor rdi, rdi
    syscall
